#import <Foundation/Foundation.h>
#import "AVKit/AVKit.h"

#if !TARGET_OS_OSX
@protocol RCTVideoPlayerViewControllerDelegate <NSObject>
- (void)videoPlayerViewControllerWillDismiss:(AVPlayerViewController *)playerViewController;
- (void)videoPlayerViewControllerDidDismiss:(AVPlayerViewController *)playerViewController;
@end
#endif
