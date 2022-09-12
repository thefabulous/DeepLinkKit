@import UIKit;

@class DPLDeepLink;

@protocol DPLDeepLinkConsuming <NSObject>

- (void)onConsumed;

@end
