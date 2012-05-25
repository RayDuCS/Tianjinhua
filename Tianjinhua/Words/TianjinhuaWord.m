//
//  TianjinhuaWord.m
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TianjinhuaWord.h"

@implementation TianjinhuaWord
@synthesize word = _word;
@synthesize pinyin = _pinyin;
@synthesize question = _question;
@synthesize answer = _answer;
@synthesize explanation = _explanation;

+ (TianjinhuaWord *) initWithWord:(NSString *)word withPinyin:(NSString *)pinyin withQuestion:(NSString *)question withAnswer:(NSString *)answer withExplanation:(NSArray *)explanation
{
    TianjinhuaWord *tianjinhuaWord = [[TianjinhuaWord alloc] init];
    tianjinhuaWord.word = word;
    tianjinhuaWord.pinyin = pinyin;
    tianjinhuaWord.question = question;
    tianjinhuaWord.answer = answer;
    tianjinhuaWord.explanation = explanation;
    
    return tianjinhuaWord;
}


@end
