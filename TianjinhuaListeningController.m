//
//  TianjinhuaListeningController.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaListeningController.h"
#import "TianjinhuaListeningView.h"

@interface TianjinhuaListeningController ()

@property (weak, nonatomic) IBOutlet TianjinhuaListeningView *listeningView;

@end

@implementation TianjinhuaListeningController
@synthesize listeningView = _listeningView;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setListeningView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)menuTouched:(id)sender
{
    [self dismissModalViewControllerAnimated:NO];
}

@end
