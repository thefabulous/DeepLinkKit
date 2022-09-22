@import UIKit;

@class DPLDeepLink;
@class DPLRouteHandler;

@protocol DPLDeepLinkConsuming <NSObject>

- (void)didConsumedDeeplinkWithHandler:(DPLRouteHandler *)handler;

@end
