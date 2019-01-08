//
//  ViewController.m
//  IJKMediaPodDemo
//
//  Created by Zhang Rui on 15/7/23.
//  Copyright (c) 2015年 Zhang Rui. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:[@"http://0.0.0.0:8000/bboy1.mp4"
                                        stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];

    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:nil];
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.player.view.frame = self.view.bounds;
    self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
    self.player.shouldAutoplay = YES;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.player prepareToPlay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
