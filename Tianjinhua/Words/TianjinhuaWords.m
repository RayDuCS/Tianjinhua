//
//  TianjinhuaWords.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaWords.h"
#import "TianjinhuaWord.h"

@implementation TianjinhuaWords
@synthesize words = _words;

- (void) load
{
    TianjinhuaWord *baozi = 
    [TianjinhuaWord initWithWord:@"包子"
                      withPinyin:@"baozi" 
                    withQuestion:@"包子是嘛?" 
                      withAnswer:@"吃的"
                 withExplanation:[NSArray arrayWithObjects:@"吃的",@"喝的",@"坐的", nil]];
    TianjinhuaWord *jiaozi = 
    [TianjinhuaWord initWithWord:@"饺子"
                      withPinyin:@"jiaozi" 
                    withQuestion:@"饺子是嘛?" 
                      withAnswer:@"食物"
                 withExplanation:[NSArray arrayWithObjects:@"食物",@"衣服",@"家具", nil]];
    TianjinhuaWord *jianbing = 
    [TianjinhuaWord initWithWord:@"煎饼"
                      withPinyin:@"jianbing" 
                    withQuestion:@"煎饼果子能自燃么?" 
                      withAnswer:@"不能"
                 withExplanation:[NSArray arrayWithObjects:@"能",@"不能",@"燃烧吧，小煎饼", nil]];
    TianjinhuaWord *daboluo = 
    [TianjinhuaWord initWithWord:@"大菠萝"
                      withPinyin:@"daboluo" 
                    withQuestion:@"大菠萝碰到剑圣会发生什么?" 
                      withAnswer:@"水果忍者"
                 withExplanation:[NSArray arrayWithObjects:@"英雄从恶魔手上拯救世界",@"水果忍者",@"暴雪抽风了", nil]];
    TianjinhuaWord *rapier = 
    [TianjinhuaWord initWithWord:@"刺刀"
                      withPinyin:@"cidao" 
                    withQuestion:@"刺刀和游荡者的关系是?" 
                      withAnswer:@"武器和施暴者"
                 withExplanation:[NSArray arrayWithObjects:@"他们都是小说里才能出现的",@"武器和施暴者",@"楼主傻逼", nil]];
    
    self.words = [NSArray arrayWithObjects:baozi,jiaozi,jianbing,daboluo,rapier, nil];
}


@end
