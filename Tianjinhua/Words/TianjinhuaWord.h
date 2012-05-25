//
//  TianjinhuaWord.h
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TianjinhuaWord : NSObject
@property (nonatomic) NSString *word;
@property (nonatomic) NSString *pinyin;
@property (nonatomic) NSString *question;
@property (nonatomic) NSString *answer;
@property (nonatomic) NSArray *explanation;

+ (TianjinhuaWord *) initWithWord: (NSString *)word
                       withPinyin: (NSString *)pinyin
                     withQuestion: (NSString *)question
                       withAnswer: (NSString *)answer
                  withExplanation: (NSArray *)explanation;



@end
