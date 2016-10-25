//
//  QuickStart.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-17.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"

@import UIKit;

@interface QuickStart: UIViewController

@end

@implementation QuickStart

- (void) viewDidLoad{
    [super viewDidLoad];
}

- (IBAction)view:(id)sender {
    [CallPhp incrementRun:@"button=quickStart_start"];
}

- (IBAction)mainMenu:(id)sender {
    [CallPhp incrementRun:@"button=quickStart_menu"];
}

@end
