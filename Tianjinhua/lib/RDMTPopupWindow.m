//
//  RDMTPopupWindow.m
//
//  Created by Marin Todorov on 7/1/11.
//  Copyright 2011 Marin Todorov. MIT license
//  http://www.opensource.org/licenses/mit-license.php
//
//  Modified by Rui Du on 6/7/2012 to adapt to ios 5.

#import "RDMTPopupWindow.h"

#define kShadeViewTag 1000
#define TOP_OFFSET 10

@interface RDMTPopupWindow()
@end

@implementation RDMTPopupWindow

@synthesize bgView = _bgView;
@synthesize bigPanelView = _bigPanelView;
@synthesize frame = _frame;


/**
 * This is the only public method, it opens a popup window and loads the given content
 * @param UIView* contentView is a generic view that displayed inside the popup
 * @param UIView* sview provide a UIViewController's view here (or other view)
 */
-(RDMTPopupWindow *)initInSuperView:(UIView *)sview
                    withContentView:(UIView *)cview
                          withFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        // Initialization code here.
        self.bgView = [[UIView alloc] initWithFrame: sview.bounds];
        self.frame = frame;
        
        // proceed with animation after the bgView was added
        [self doTransitionWithContentView:cview];
    }
    
    return self;
}

/**
 * Afrer the window background is added to the UI the window can animate in
 * and load the UIWebView
 */
-(void)doTransitionWithContentView:(UIView *)cview
{
    //faux view
    UIView* fauxView = [[UIView alloc] initWithFrame: CGRectMake(TOP_OFFSET, TOP_OFFSET, 200, 200)];
    [self.bgView addSubview: fauxView];

    //the new panel
    self.bigPanelView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.bgView.frame.size.width, self.bgView.frame.size.height)];
    self.bigPanelView.center = CGPointMake( self.bgView.frame.size.width/2, self.bgView.frame.size.height/2);
    
    //add the window background
    UIImageView* background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"popupWindowBack.png"]];
    background.center = CGPointMake(self.bigPanelView.frame.size.width/2, self.bigPanelView.frame.size.height/2);
    background.frame = self.frame;
    //background.contentMode = UIViewContentModeScaleAspectFit;
    [self.bigPanelView addSubview: background];
    
    //add the content view
    cview.frame = CGRectInset(background.frame, TOP_OFFSET, TOP_OFFSET);
    cview.backgroundColor = [UIColor clearColor];
    [self.bigPanelView addSubview:cview];
    
    
    //add the close button
    int closeBtnOffset = TOP_OFFSET;
    UIImage* closeBtnImg = [UIImage imageNamed:@"popupCloseBtn.png"];
    UIButton* closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeBtn setImage:closeBtnImg forState:UIControlStateNormal];
    [closeBtn setFrame:CGRectMake( background.frame.origin.x + background.frame.size.width - closeBtnImg.size.width - closeBtnOffset, 
                                   background.frame.origin.y ,
                                   closeBtnImg.size.width + closeBtnOffset, 
                                   closeBtnImg.size.height + closeBtnOffset)];
    [closeBtn addTarget:self action:@selector(closePopupWindow) forControlEvents:UIControlEventTouchUpInside];
    [self.bigPanelView addSubview: closeBtn];
    
    //animation options
    UIViewAnimationOptions options = UIViewAnimationOptionTransitionCrossDissolve  |            UIViewAnimationOptionAllowUserInteraction    | UIViewAnimationOptionBeginFromCurrentState;
    
    //run the animation
    [UIView transitionFromView:fauxView toView:self.bigPanelView duration:0.5 options:options completion: ^(BOOL finished) {
        
        //dim the contents behind the popup window
        UIView* shadeView = [[UIView alloc] initWithFrame:self.bigPanelView.frame];
        shadeView.backgroundColor = [UIColor blackColor];
        shadeView.alpha = 0.3;
        shadeView.tag = kShadeViewTag;
        [self.bigPanelView addSubview: shadeView];
        [self.bigPanelView sendSubviewToBack: shadeView];
    }];
}

/**
 * Removes the window background and calls the animation of the window
 */
-(void)closePopupWindow
{
    //remove the shade
    [[self.bigPanelView viewWithTag: kShadeViewTag] removeFromSuperview];    
    [self performSelector:@selector(closePopupWindowAnimate) withObject:nil afterDelay:0.1];
    
}

/**
 * Animates the window and when done removes all views from the view hierarchy
 * since they are all only retained by their superview this also deallocates them
 * finally deallocate the class instance
 */
-(void)closePopupWindowAnimate
{
    
    //faux view
    __block UIView* fauxView = [[UIView alloc] initWithFrame: CGRectMake(TOP_OFFSET, TOP_OFFSET, 200, 200)];
    [self.bgView addSubview: fauxView];

    //run the animation
    UIViewAnimationOptions options = UIViewAnimationOptionTransitionCrossDissolve | UIViewAnimationOptionAllowUserInteraction    | UIViewAnimationOptionBeginFromCurrentState;
    
    //hold to the bigPanelView, because it'll be removed during the animation
    //[self.bigPanelView retain];
    
    [UIView transitionFromView:self.bigPanelView toView:fauxView duration:0.5 options:options completion:^(BOOL finished) {

        //when popup is closed, remove all the views
        for (UIView* child in self.bigPanelView.subviews) {
            [child removeFromSuperview];
        }
        for (UIView* child in self.bgView.subviews) {
            [child removeFromSuperview];
        }
        //[self.bigPanelView release];
        [self.bgView removeFromSuperview];
        //[self release];
    }];
}

@end