//
//  SecondViewController.m
//  NotificationTest
//
//  Created by In Chung Yeul on 2016. 4. 29..
//  Copyright © 2016년 inchung. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
- (IBAction)testBtn:(id)sender {
//    NSNotificationCenter *myNotificationCenter = [NSNotificationCenter defaultCenter];
//    [myNotificationCenter postNotificationName:@"firstNoti" object:self];
    
    [[NSNotificationQueue defaultQueue] enqueueNotification:[NSNotification notificationWithName:@"firstNoti" object:nil] postingStyle:NSPostWhenIdle];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNotificationCenter *sendNotification = [NSNotificationCenter defaultCenter];
    [sendNotification addObserver:self selector:@selector(firstMethod:) name:@"firstNoti" object: nil];
}
- (void)firstMethod:(NSNotification *)notification {
    NSLog(@"222");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
