//
//  MYLib.h
//  MYFrameWork
//
//  Created by chuancun cheng on 2023/3/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MYLib : NSObject

- (NSString *)changeToStandardTime:(NSTimeInterval)timeInterval;

- (NSString *)getMySourceBundlePath;

- (NSString *)getLibApp1Called;

@end

NS_ASSUME_NONNULL_END
