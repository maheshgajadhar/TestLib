
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
RCT_EXPORT_METHOD(addEvent3:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}
RCT_EXPORT_METHOD(addEvent4:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}
RCT_EXPORT_METHOD(getEvent:
resolver:(RCTPromiseResolveBlock)resolve
rejecter:(RCTPromiseRejectBlock)reject)
{
  NSString *event = @"Diner at Den Haag";
  if(event){
    resolve(event);
  } else {
    NSString *error = @"No event found";
    reject(error);
  }
}

@end
