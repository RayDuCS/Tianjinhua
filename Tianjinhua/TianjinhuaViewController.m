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

@end

@implementation TianjinhuaViewController

@synthesize menuView = _menuView;

- (void)load
{
    // load first audio here
    NSError *error = nil;
    NSString *biuPath = [[NSBundle mainBundle] pathForResource:@"pew-pew-lei" ofType:@"caf"];
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:biuPath] error:&error];
    [player prepareToPlay];
}

- (void)viewDidLoad
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [super viewDidLoad];
    [self load];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
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
