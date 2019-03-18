
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
RCT_EXPORT_METHOD(findName:(RCTResponseSenderBlock)callback)
{
  NSString *name = @"Mahesh";
  callback(@[[NSNull null], name]);
}
RCT_REMAP_METHOD(findEvents,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  NSString *events = @"event1"
  if (events) {
    resolve(events);
  } else {
    NSError *error = @"no event"
    reject(@"no_events", @"There were no events", error);
  }
}


@end
