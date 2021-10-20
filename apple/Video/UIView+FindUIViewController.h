//
//  UIView+FindUIViewController.h
//  RCTVideo
//
//  Created by Stanisław Chmiela on 31.03.2016.
//  Copyright © 2016 Facebook. All rights reserved.
//
//  Source: http://stackoverflow.com/a/3732812/1123156

#if !TARGET_OS_OSX
#import <UIKit/UIKit.h>
#else
#import <React/RCTUIKit.h>
#endif

#if !TARGET_OS_OSX
@interface UIView (FindUIViewController)
- (UIViewController *) firstAvailableUIViewController;
#else
@interface RCTUIView (FindUIViewController)
- (NSViewController *) firstAvailableUIViewController;
#endif
- (id) traverseResponderChainForUIViewController;
@end
