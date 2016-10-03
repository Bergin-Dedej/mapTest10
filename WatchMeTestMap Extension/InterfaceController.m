//
//  InterfaceController.m
//  WatchMeTestMap Extension
//
//  Created by Ber Jr on 2016-09-26.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import "InterfaceController.h"
@import WatchConnectivity;


@interface InterfaceController() <WCSessionDelegate>
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *pointsLabel;

@end


@implementation InterfaceController
{
    NSString * distanceMessage;
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)session:(nonnull WCSession *)session didReceiveMessage:(nonnull NSDictionary *)message
   replyHandler:(nonnull void (^)(NSDictionary * __nonnull))replyHandler {
    distanceMessage = [message objectForKey:@"distanceRun"];

    dispatch_async(dispatch_get_main_queue(), ^{
        NSString *pointsMessage = [NSString stringWithFormat:@"Distnce: %@", distanceMessage];
        [self.pointsLabel setText:pointsMessage];

    });
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    if ([WCSession isSupported])
    {
        WCSession* session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



