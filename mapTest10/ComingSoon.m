//
//  ComingSoon.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-15.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"

@import UIKit;

@interface ComingSoon: UIViewController

@end

@implementation ComingSoon

- (void) viewDidLoad{
    [super viewDidLoad];
    
}

- (IBAction)backToMainMenu:(id)sender {
    [CallPhp incrementRun:@"button=comingSoon_underDevelopment"];
}
- (IBAction)mainMenu:(id)sender {
    [CallPhp incrementRun:@"button=comingSoon_menu"];
}

@end
