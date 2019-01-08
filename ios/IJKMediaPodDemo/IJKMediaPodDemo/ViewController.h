//
//  ViewController.h
//  IJKMediaPodDemo
//
//  Created by Zhang Rui on 15/7/23.
//  Copyright (c) 2015年 Zhang Rui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IJKMediaFramework/IJKMediaPlayer.h>

@interface ViewController : UIViewController
@property(atomic, retain) id<IJKMediaPlayback> player;

@end

