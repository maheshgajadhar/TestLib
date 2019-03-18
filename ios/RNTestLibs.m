
#import "RNTestLibs.h"
#import <React/RCTLog.h>

@implementation RNTestLibs

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}
RCT_EXPORT_METHOD(addEvent2:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}
RCT_EXPORT_METHOD(findName:(RCTResponseSenderBlock)callback)
{
  NSString *name = @"Mahesh";
  callback(@[[NSNull null], name]);
}
RCT_REMAP_METHOD(getEvent,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
RCTLogInfo(@"Get event";
 NSString *thingToReturn = @"Hello World!";
 resolve(thingToReturn);
}


@end
