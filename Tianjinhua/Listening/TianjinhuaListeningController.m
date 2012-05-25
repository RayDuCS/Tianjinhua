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
#import "TianjinhuaWords.h"
#import "TianjinhuaWord.h"

#define CAPACITY 5

@interface TianjinhuaListeningController ()

@property (weak, nonatomic) IBOutlet TianjinhuaListeningView *listeningView;
@property (weak, nonatomic) IBOutlet TianjinhuaManualView *manualView;
@property (weak, nonatomic) IBOutlet UITextView *manualTextView;
@property (weak, nonatomic) IBOutlet UILabel *word;
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UIButton *choice1;
@property (weak, nonatomic) IBOutlet UIButton *choice2;
@property (weak, nonatomic) IBOutlet UIButton *choice3;
@property (weak, nonatomic) IBOutlet UILabel *progress;

@property (strong, nonatomic) NSArray *words;
@property (strong, nonatomic) NSArray *choices;
@property (nonatomic) int currentWordIdx;

@end

@implementation TianjinhuaListeningController
@synthesize listeningView = _listeningView;
@synthesize manualView = _manualView;
@synthesize manualTextView = _manualTextView;
@synthesize words = _words;
@synthesize word = _word;
@synthesize question = _question;
@synthesize choice1 = _choice1;
@synthesize choice2 = _choice2;
@synthesize choice3 = _choice3;
@synthesize progress = _progress;
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
    //[self changeManualViewToHidden:NO];
    [self changeListeningViewToHidden:NO];
}

- (void)viewDidUnload
{
    [self setListeningView:nil];
    [self setManualView:nil];
    [self setManualTextView:nil];
    [self setWord:nil];
    [self setQuestion:nil];
    [self setChoice1:nil];
    [self setChoice2:nil];
    [self setChoice3:nil];
    [self setProgress:nil];
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
    
    _currentWordIdx = currentWordIdx;
    self.progress.text = [NSString stringWithFormat:@"%d/%d",self.currentWordIdx+1, CAPACITY];
    TianjinhuaWord *word = [self.words objectAtIndex:_currentWordIdx];
    self.word.text = word.word;
    self.question.text = word.question;
    [self setBtn:self.choice1 withTitle:[word.explanation objectAtIndex:0]];
    [self setBtn:self.choice2 withTitle:[word.explanation objectAtIndex:1]];
    [self setBtn:self.choice3 withTitle:[word.explanation objectAtIndex:2]];
    
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
        self.progress.text = [NSString stringWithFormat:@"%d/%d",self.currentWordIdx+1, CAPACITY];
    }
    
    self.listeningView.hidden = hidden;
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
}

@end
