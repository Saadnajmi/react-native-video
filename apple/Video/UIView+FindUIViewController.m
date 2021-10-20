//  Source: http://stackoverflow.com/a/3732812/1123156

#import "UIView+FindUIViewController.h"

#if !TARGET_OS_OSX
@implementation UIView (FindUIViewController)
- (UIViewController *) firstAvailableUIViewController {
    // convenience function for casting and to "mask" the recursive function
    return (UIViewController *)[self traverseResponderChainForUIViewController];
}
#else
@implementation RCTUIView (FindUIViewController)
- (NSViewController *) firstAvailableUIViewController {
    // convenience function for casting and to "mask" the recursive function
    return (NSViewController *)[self traverseResponderChainForUIViewController];
}
#endif

- (id) traverseResponderChainForUIViewController {
    id nextResponder = [self nextResponder];
    #if !TARGET_OS_OSX
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[UIView class]]) {
        return [nextResponder traverseResponderChainForUIViewController];
    } else {
        return nil;
    }
    #else
    if ([nextResponder isKindOfClass:[NSViewController class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[NSView class]]) {
        return [nextResponder traverseResponderChainForUIViewController];
    } else {
        return nil;
    }
    #endif
}
@end
