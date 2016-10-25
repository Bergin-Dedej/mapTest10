//
//  Chat.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-15.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"

@import UIKit;

@interface Chat: UIViewController

@end

@implementation Chat

- (void) viewDidLoad{
    [super viewDidLoad];
    
}


- (IBAction)chat:(id)sender {
    [CallPhp incrementRun:@"button=chat_chat"];
}
- (IBAction)mainMenu:(id)sender {
    [CallPhp incrementRun:@"button=chat_menu"];
}

@end
