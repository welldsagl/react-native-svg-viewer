#import "RNSVGViewer.h"

#import <SVGKit/SVGKit.h>

@implementation RNSVGViewer

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_queue_create("com.facebook.React.AsyncLocalStorageQueue", DISPATCH_QUEUE_SERIAL);
}

- (SVGKFastImageView *)view {
    SVGKFastImageView *imageView = [SVGKFastImageView alloc];
    return imageView;
}


RCT_CUSTOM_VIEW_PROPERTY(source, NSString *, SVGKFastImageView) {
    NSData* data = [json dataUsingEncoding:NSUTF8StringEncoding];
    SVGKImage* image = [[SVGKImage alloc] initWithData:data];
    [view initWithSVGKImage: image];
}

@end

