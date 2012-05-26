//
//  TianjinhuaListeningController.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaListeningController.h"
#import "TianjinhuaListeningView.h"
#import "TianjinhuaManualView.h"
#import "TianjinhuaListeningResult.h"
#import "TianjinhuaWords.h"
#import "TianjinhuaWord.h"

#define CAPACITY 5

@interface TianjinhuaListeningController ()

@property (weak, nonatomic) IBOutlet TianjinhuaListeningView *listeningView;
@property (weak, nonatomic) IBOutlet TianjinhuaManualView *manualView;
@property (weak, nonatomic) IBOutlet TianjinhuaListeningResult *resultView;
@property (weak, nonatomic) IBOutlet UITextView *manualTextView;
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *choice1Btn;
@property (weak, nonatomic) IBOutlet UIButton *choice2Btn;
@property (weak, nonatomic) IBOutlet UIButton *choice3Btn;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;

@property (strong, nonatomic) NSArray *words;
@property (strong, nonatomic) NSArray *choices;
@property (nonatomic) int currentWordIdx;

@end

@implementation TianjinhuaListeningController
@synthesize listeningView = _listeningView;
@synthesize manualView = _manualView;
@synthesize resultView = _resultView;
@synthesize manualTextView = _manualTextView;
@synthesize words = _words;
@synthesize wordLabel = _wordLabel;
@synthesize questionLabel = _questionLabel;
@synthesize choice1Btn = _choice1Btn;
@synthesize choice2Btn = _choice2Btn;
@synthesize choice3Btn = _choice3Btn;
@synthesize progressLabel = _progressLabel;
@synthesize commentLabel = _commentLabel;
@synthesize doneBtn = _doneBtn;
@synthesize currentWordIdx = _currentWordIdx;
@synthesize choices = _choices;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listeningView.hidden = YES;
    self.manualView.hidden = YES;
    self.resultView.hidden = YES;
    [self changeManualViewToHidden:NO];
    //[self changeListeningViewToHidden:NO];
}

- (void)viewDidUnload
{
    [self setListeningView:nil];
    [self setManualView:nil];
    [self setManualTextView:nil];
    [self setWordLabel:nil];
    [self setQuestionLabel:nil];
    [self setChoice1Btn:nil];
    [self setChoice2Btn:nil];
    [self setChoice3Btn:nil];
    [self setProgressLabel:nil];
    [self setDoneBtn:nil];
    [self setResultView:nil];
    [self setCommentLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)setBtn:(UIButton *)button
     withTitle:(NSString *)title
{
    [button setTitle:title forState:UIControlStateNormal];
    if (!self.choices)
        return;
    
    if ([button.currentTitle isEqualToString:[self.choices objectAtIndex:self.currentWordIdx]])
        [button setBackgroundColor:[UIColor greenColor]];
    else {
        [button setBackgroundColor:[UIColor whiteColor]];
    }
}

- (void)setCurrentWordIdx:(int)currentWordIdx
{
    if (currentWordIdx < 0)
        currentWordIdx = 0;
    
    if (currentWordIdx > CAPACITY - 1)
        currentWordIdx = CAPACITY - 1;
    
    if (currentWordIdx == CAPACITY - 1)
        self.doneBtn.hidden = FALSE;
    
    _currentWordIdx = currentWordIdx;
    self.progressLabel.text = [NSString stringWithFormat:@"%d/%d",self.currentWordIdx+1, CAPACITY];
    TianjinhuaWord *word = [self.words objectAtIndex:_currentWordIdx];
    self.wordLabel.text = word.word;
    self.questionLabel.text = word.question;
    [self setBtn:self.choice1Btn withTitle:[word.explanation objectAtIndex:0]];
    [self setBtn:self.choice2Btn withTitle:[word.explanation objectAtIndex:1]];
    [self setBtn:self.choice3Btn withTitle:[word.explanation objectAtIndex:2]];
    
    [self.listeningView setNeedsDisplay];
}

- (IBAction)menuTouched:(id)sender
{
    [self dismissModalViewControllerAnimated:NO];
}

- (IBAction)okTouched:(UIButton *)sender
{
    [self changeManualViewToHidden:YES];
    [self changeListeningViewToHidden:NO];
}

- (IBAction)choiceTouched:(UIButton *)sender
{
    NSMutableArray *choices = [self.choices mutableCopy];
    
    [choices replaceObjectAtIndex:self.currentWordIdx withObject:sender.currentTitle];
    self.choices = [choices copy];
    self.currentWordIdx = self.currentWordIdx + 1;
}

- (void)changeManualViewToHidden:(BOOL)hidden
{
    if(!hidden)
    {
        [self.manualTextView flashScrollIndicators];
    }
    
    self.manualView.hidden = hidden;
}

- (void)changeListeningViewToHidden:(BOOL)hidden
{
    if(!hidden)
    {
        //generate new test set.
        TianjinhuaWords *wordsRef = [[TianjinhuaWords alloc] init];
        [wordsRef load];
        self.words = [wordsRef.words copy];
        NSMutableArray *choices = [[NSMutableArray alloc] initWithCapacity:CAPACITY];
        for(int i=0; i<CAPACITY; i++)
        {
            [choices addObject:@""];
        }
        
        self.choices = [choices copy];
        self.currentWordIdx = 0;
        self.progressLabel.text = [NSString stringWithFormat:@"%d/%d",self.currentWordIdx+1, CAPACITY];
        self.doneBtn.hidden = TRUE;
    }
    
    self.listeningView.hidden = hidden;
}

- (void)changeResultViewToHidden:(BOOL)hidden
{
    if (!hidden)
    {
    }
    
    self.resultView.hidden = hidden;
}

- (NSString *)commentForRatio:(float)ratio
{
    if(ratio > 0.8)
        return @"你个天津娃，别以为我不知道";
    else if(ratio > 0.6)
        return @"你的天津话好犀利啊";
    else if(ratio > 0.4)
        return @"你的天津话不错";
    else if(ratio > 0.2)
        return @"你的天津话有待提高哈";
    else {
        return @"你是福兰银吧？";
    }
}

- (IBAction)doneTouched:(UIButton *)sender
{
    // TODO -- check fill all answers.
    float correct = 0.0;
    for(int i=0; i<CAPACITY;i++)
    {
        TianjinhuaWord *word = [self.words objectAtIndex:i];
        NSString *userAnswer = [self.choices objectAtIndex:i];
        if([userAnswer isEqualToString:word.answer])
            correct++;
    }
    
    self.commentLabel.text = [self commentForRatio:correct/CAPACITY];
    [self changeListeningViewToHidden:YES];
    [self changeResultViewToHidden:NO];
}

- (IBAction)moveTouched:(UIButton *)sender
{
    if ([sender.currentTitle isEqualToString:@"前一个"])
    {
        self.currentWordIdx = self.currentWordIdx - 1;
    }
    else if ([sender.currentTitle isEqualToString:@"下一个"])
    {
        self.currentWordIdx = self.currentWordIdx + 1;
    }
    else if ([sender.currentTitle isEqualToString:@"分享"])
    {
    }
    else if ([sender.currentTitle isEqualToString:@"再来一次"])
    {
        [self changeResultViewToHidden:YES];
        [self changeListeningViewToHidden:NO];
    }
}

@end
