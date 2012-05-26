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
    
    
    
    TianjinhuaWord *bingjiling= 
    [TianjinhuaWord initWithWord:@"冰激凌"
                      withPinyin:@"bingjiling" 
                    withQuestion:@"这是个什么?" 
                      withAnswer:@"雪糕"
                 withExplanation:[NSArray arrayWithObjects:@"貌似是衣服",@"雪糕",@"只能夏天食用的甜点", nil]];
    TianjinhuaWord *apple = 
    [TianjinhuaWord initWithWord:@"苹果"
                      withPinyin:@"pingguo" 
                    withQuestion:@"这个物品哪里最多?" 
                      withAnswer:@"水果园"
                 withExplanation:[NSArray arrayWithObjects:@"水果园",@"伊甸园",@"超市", nil]];
    TianjinhuaWord *paper = 
    [TianjinhuaWord initWithWord:@"卫生纸"
                      withPinyin:@"weishengzhi" 
                    withQuestion:@"这个是用来做什么的?" 
                      withAnswer:@"擦擦用"
                 withExplanation:[NSArray arrayWithObjects:@"生火必需品",@"擦擦用",@"宅男必需品", nil]];
    TianjinhuaWord *choc = 
    [TianjinhuaWord initWithWord:@"巧克力"
                      withPinyin:@"qiaokeli" 
                    withQuestion:@"有彩色的巧克力么?" 
                      withAnswer:@"楼主傻逼"
                 withExplanation:[NSArray arrayWithObjects:@"没有！",@"我不知道啊啊啊啊啊",@"楼主傻逼", nil]];
    TianjinhuaWord *juice = 
    [TianjinhuaWord initWithWord:@"果汁"
                      withPinyin:@"guozhi" 
                    withQuestion:@"果汁很甜么?" 
                      withAnswer:@"不一定"
                 withExplanation:[NSArray arrayWithObjects:@"谁知道呢",@"不一定",@"超级甜哦，亲", nil]];
    
    TianjinhuaWord *chops = 
    [TianjinhuaWord initWithWord:@"筷子"
                      withPinyin:@"kuaizi" 
                    withQuestion:@"筷子的同义词?" 
                      withAnswer:@"竹棍"
                 withExplanation:[NSArray arrayWithObjects:@"筷子",@"啊？",@"竹棍", nil]];
    TianjinhuaWord *stamp = 
    [TianjinhuaWord initWithWord:@"邮票"
                      withPinyin:@"youpiao" 
                    withQuestion:@"这个干嘛使得?" 
                      withAnswer:@"寄信用"
                 withExplanation:[NSArray arrayWithObjects:@"喷口水的",@"寄信用",@"烧钱的", nil]];
    TianjinhuaWord *mtg = 
    [TianjinhuaWord initWithWord:@"万智牌"
                      withPinyin:@"wanzhipai" 
                    withQuestion:@"万智牌是?" 
                      withAnswer:@"大坑"
                 withExplanation:[NSArray arrayWithObjects:@"牌",@"某著名卡牌游戏",@"大坑", nil]];
    TianjinhuaWord *towel = 
    [TianjinhuaWord initWithWord:@"毛巾"
                      withPinyin:@"maojin" 
                    withQuestion:@"毛巾啊?" 
                      withAnswer:@"楼主傻逼"
                 withExplanation:[NSArray arrayWithObjects:@"啥？",@"不懂",@"楼主傻逼", nil]];
    TianjinhuaWord *dead = 
    [TianjinhuaWord initWithWord:@"挂了"
                      withPinyin:@"guale" 
                    withQuestion:@"挂了什么意思?" 
                      withAnswer:@"扑街了"
                 withExplanation:[NSArray arrayWithObjects:@"游戏术语",@"挂衣服",@"扑街了", nil]];
    
    self.words = [NSArray arrayWithObjects:baozi,jiaozi,jianbing,daboluo,rapier, apple, paper, choc, juice, chops, stamp, mtg, towel, dead, bingjiling, nil];
}


- (NSArray *)generateWordsWithCapacity:(int)capacity
{
    if(!self.words)
        return nil;
    
    if([self.words count] < capacity)
        return nil;
    
    NSMutableArray *uniqueIdx = [[NSMutableArray alloc] init];
    int num;
    int upperbound = [self.words count];
    while ([uniqueIdx count] < capacity) 
    {
        num = arc4random() % upperbound;
        if (![uniqueIdx containsObject:[NSNumber numberWithInt:num]])
        {
            [uniqueIdx addObject:[NSNumber numberWithInt:num]];
        }
    }
    
    NSMutableArray *randomWords = [[NSMutableArray alloc] init];
    for (NSNumber *numObj in uniqueIdx)
    {
        int idx = [numObj intValue];
        [randomWords addObject:[self.words objectAtIndex:idx]];
    }
    
    return [randomWords copy];
}


@end
