//
//  TianjinhuaViewController.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaViewController.h"
#import "TianjinhuaMenu.h"

@interface TianjinhuaViewController ()

@property (nonatomic, weak) IBOutlet TianjinhuaMenu *menuView;

@end

@implementation TianjinhuaViewController

@synthesize menuView = _menuView;

- (void)viewDidLoad
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [super viewDidLoad];
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






@end
