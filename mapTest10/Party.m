//
//  Party.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-15.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"

@import UIKit;

@interface Party: UIViewController

@end

@implementation Party

- (void) viewDidLoad{
    [super viewDidLoad];
    
}

- (IBAction)sendInvite:(id)sender {
    [CallPhp incrementRun:@"button=partyRun_inviteFriends"];
}
- (IBAction)mainMenu:(id)sender {
    [CallPhp incrementRun:@"button=partyRun_menu"];
}

@end
