
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
RCT_EXPORT_METHOD(getEvent,
resolver:(RCTPromiseResolveBlock)resolve
rejecter:(RCTRejectBlock)reject)
{
  NSString *event = @"etentje at den haag";
  if(event){
    resolve(event);
  } else{
    NSString *error = @"Geen event";
    reject(error);
  }
}

@end
