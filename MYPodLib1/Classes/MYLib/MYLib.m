//
//  MYLib.m
//  MYFrameWork
//
//  Created by chuancun cheng on 2023/3/17.
//

#import "MYLib.h"
//#import <MYFrameWorkSec/MYFrameWorkSec.h>

@implementation MYLib

- (NSString *)changeToStandardTime:(NSTimeInterval)timeInterval
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *time = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timeInterval]];
    return time;
}

- (NSString *)getMySourceBundlePath
{
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath stringByAppendingPathComponent:@"/MYFrameBundle.bundle"];
    
    //[[NSBundle mainBundle] pathForResource:@"MYFrameBundle" ofType:@"bundle"];
    return bundlePath;
}

- (NSString *)getLibApp1Called {
    NSString *ret = @"我还没有实现该方法"; // [MYLibTest showMYLibTestCalled];
    NSLog(@"MYLib getLibApp1Called ret: %@", ret);
    return ret;
}

@end
