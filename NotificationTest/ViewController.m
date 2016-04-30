//
//  ViewController.m
//  NotificationTest
//
//  Created by In Chung Yeul on 2016. 4. 29..
//  Copyright © 2016년 inchung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSNotificationCenter *sendNotification = [NSNotificationCenter defaultCenter];
    [sendNotification addObserver:self selector:@selector(firstMethod:) name:@"firstNoti" object: nil];
}
- (void)firstMethod:(NSNotification *)notification {
    NSLog(@"111");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
