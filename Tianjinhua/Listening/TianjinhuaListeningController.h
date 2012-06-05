//
//  TianjinhuaListeningController.h
//  Tianjinhua
//
//  Created by Xiaoxuan Zhang on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface TianjinhuaListeningController : UIViewController<AVAudioPlayerDelegate>{
    AVAudioPlayer *audioPlayer;
    
}

@end
