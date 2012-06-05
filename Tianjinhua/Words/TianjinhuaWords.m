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
    [TianjinhuaWord initWithWord:@"拔闯"
                      withPinyin:@"baozi" 
                    withQuestion:@"拔闯是去干嘛？"
                      withAnswer:@"打抱不平"
                 withExplanation:[NSArray arrayWithObjects:@"很用力的开门",@"无所谓的样子",@"打抱不平", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    TianjinhuaWord *jiaozi = 
    [TianjinhuaWord initWithWord:@"打镲"
                      withPinyin:@"jiaozi" 
                    withQuestion:@"打镲是干嘛?" 
                      withAnswer:@"打岔"
                 withExplanation:[NSArray arrayWithObjects:@"打磨光亮",@"敲锣打鼓的吵闹别人",@"打岔", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    TianjinhuaWord *jianbing = 
    [TianjinhuaWord initWithWord:@"捯饬"
                      withPinyin:@"jianbing" 
                    withQuestion:@"捯饬" 
                      withAnswer:@"打扮"
                 withExplanation:[NSArray arrayWithObjects:@"打扮",@"收拾打扫",@"抽拉东西的样子", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *daboluo = 
    [TianjinhuaWord initWithWord:@"得楞"
                      withPinyin:@"daboluo" 
                    withQuestion:@"得楞是？" 
                      withAnswer:@"修理"
                 withExplanation:[NSArray arrayWithObjects:@"修理",@"\"二\"了吧唧的样子",@"又呆又傻", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *rapier = 
    [TianjinhuaWord initWithWord:@"翻呲"
                      withPinyin:@"cidao" 
                    withQuestion:@"翻呲是？" 
                      withAnswer:@"翻脸"
                 withExplanation:[NSArray arrayWithObjects:@"翻白眼",@"翻东西的状态",@"翻脸", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    
    
    
    TianjinhuaWord *bingjiling= 
    [TianjinhuaWord initWithWord:@"二五眼"
                      withPinyin:@"bingjiling" 
                    withQuestion:@"二五眼" 
                      withAnswer:@"凑合"
                 withExplanation:[NSArray arrayWithObjects:@"鄙视的眼神",@"势利眼，看人下菜碟 ",@"凑合", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *apple = 
    [TianjinhuaWord initWithWord:@"贫"
                      withPinyin:@"pingguo" 
                    withQuestion:@"贫" 
                      withAnswer:@"说起话来没完没了"
                 withExplanation:[NSArray arrayWithObjects:@"花言巧语",@"馋嘴",@"说起话来没完没了", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *paper = 
    [TianjinhuaWord initWithWord:@"崴泥"
                      withPinyin:@"weishengzhi" 
                    withQuestion:@"这个是用来做什么的?" 
                      withAnswer:@"糟糕坏事了"
                 withExplanation:[NSArray arrayWithObjects:@"掉泥坑里去了",@"烂泥扶不上墙",@"糟糕坏事了", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *choc = 
    [TianjinhuaWord initWithWord:@"五脊六兽"
                      withPinyin:@"qiaokeli" 
                    withQuestion:@"有彩色的巧克力么?" 
                      withAnswer:@"闲的难受"
                 withExplanation:[NSArray arrayWithObjects:@"用很多花招和计谋办成事情！",@"闲的难受",@"五脏六腑", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *juice = 
    [TianjinhuaWord initWithWord:@"幺蛾子"
                      withPinyin:@"guozhi" 
                    withQuestion:@"果汁很甜么?" 
                      withAnswer:@"招惹的麻烦"
                 withExplanation:[NSArray arrayWithObjects:@"指某种有很多小心思、小心眼的人",@"招惹的麻烦",@"多彩斑斓的物品", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    
    TianjinhuaWord *chops = 
    [TianjinhuaWord initWithWord:@"招欠"
                      withPinyin:@"kuaizi" 
                    withQuestion:@"招欠的同义词?" 
                      withAnswer:@"讨人厌的行为"
                 withExplanation:[NSArray arrayWithObjects:@"做事欠考虑",@"被揍",@"讨人厌的行为", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *stamp = 
    [TianjinhuaWord initWithWord:@"挣崴"
                      withPinyin:@"youpiao" 
                    withQuestion:@"这个干嘛使得?" 
                      withAnswer:@"随便乱动的样子"
                 withExplanation:[NSArray arrayWithObjects:@"走路一瘸一拐",@"努力奋斗的样子",@"随便乱动的样子", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *mtg = 
    [TianjinhuaWord initWithWord:@"眼力见儿"
                      withPinyin:@"wanzhipai" 
                    withQuestion:@"眼力见儿是?" 
                      withAnswer:@"察言观色的能力"
                 withExplanation:[NSArray arrayWithObjects:@"对事物的欣赏能力",@"做事情有远见，能透过表面看本质",@"察言观色的能力", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *towel = 
    [TianjinhuaWord initWithWord:@"老鼻子"
                      withPinyin:@"maojin" 
                    withQuestion:@"老鼻子" 
                      withAnswer:@"特别多的样子"
                 withExplanation:[NSArray arrayWithObjects:@"蹬鼻子上脸",@"特别多的样子",@"经验丰富的样子", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];
    
    TianjinhuaWord *dead = 
    [TianjinhuaWord initWithWord:@"来事儿"
                      withPinyin:@"guale" 
                    withQuestion:@"来事儿" 
                      withAnswer:@"讨人欢心"
                 withExplanation:[NSArray arrayWithObjects:@"霸道的样子",@"吃饱了撑得",@"讨人欢心", nil]
                       withSound:[[NSBundle mainBundle] pathForResource : @"pew-pew-lei" ofType :@"caf"]];

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
