//
//  TianjinhuaWords.h
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TianjinhuaWords : NSObject
@property (nonatomic) NSArray *words;
- (void) load;
- (NSArray *)generateWordsWithCapacity:(int)capacity;

@end
