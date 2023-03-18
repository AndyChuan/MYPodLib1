//
//  AHViewController.m
//  MYPodLib1
//
//  Created by chengchuancun-a1147 on 03/17/2023.
//  Copyright (c) 2023 chengchuancun-a1147. All rights reserved.
//

#import "AHViewController.h"
#import "MYPodHeader.h"

@interface AHViewController ()

@end

@implementation AHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"===========================================");
    NSLog(@"ViewController viewDidLoad");
    NSLog(@"=========================================== \n");
    
    NSString *time = [[[MYLib alloc] init] changeToStandardTime: 1678955469];
    NSLog(@"time: %@", time);
    
    NSString *bundlePath = [[[MYLib alloc] init] getMySourceBundlePath];
    NSLog(@"bundlePath: %@", bundlePath);
    NSString *imgPathTwo= [bundlePath stringByAppendingPathComponent:@"device_exception"];
    UIImage *imageTwo = [UIImage imageWithContentsOfFile:imgPathTwo];
    UIImageView *two=[[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 30, 30)];
    two.image=imageTwo;
    [self.view addSubview:two];
    
    NSLog(@"===========================================");
    NSLog(@"ViewController viewDidLoad 分隔符2");
    NSLog(@"=========================================== \n");
    
    NSString *ret = [[[MYLib alloc] init] getLibApp1Called];
    NSLog(@"=== ret: %@", ret);
    
    NSString *retSec = [MYLibSec showMYLibSecCalled];
    NSLog(@"=== retSec: %@", retSec);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
