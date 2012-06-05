//
//  TianjinhuaViewController.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaViewController.h"
#import "TianjinhuaMenu.h"
#import "TianjinhuaListeningController.h"
#import "TianjinhuaWords.h"

@interface TianjinhuaViewController ()

@property (nonatomic, weak) IBOutlet TianjinhuaMenu *menuView;
@property (weak, nonatomic) IBOutlet UIImageView *welcomeView;

@end

@implementation TianjinhuaViewController

@synthesize menuView = _menuView;
@synthesize welcomeView = _welcomeView;

#define WELCOME_DURATION 3

- (void)load
{
    // load first audio here
    NSError *error = nil;
    NSString *biuPath = [[NSBundle mainBundle] pathForResource:@"pew-pew-lei" ofType:@"caf"];
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:biuPath] error:&error];
    [player prepareToPlay];
    [UIView animateWithDuration:WELCOME_DURATION animations:^{ self.welcomeView.alpha = 0; }];
}

- (void)viewDidLoad
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [super viewDidLoad];
    //[self load];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self load];
}

- (void)viewDidUnload
{
    [self setWelcomeView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // TODO - add rotations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"listenSeg"])
    {
    }
}




@end
