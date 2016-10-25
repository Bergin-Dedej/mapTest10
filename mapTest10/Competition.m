//
//  Competition.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-15.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"

@import UIKit;

@interface Competition: UIViewController

@end

@implementation Competition

- (void) viewDidLoad{
    [super viewDidLoad];
    
}

- (IBAction)checkpointRace:(id)sender {
    [CallPhp incrementRun:@"button=competition_checkpoint"];
}
- (IBAction)findOpponent:(id)sender {
    [CallPhp incrementRun:@"button=competition_challenge"];
}
- (IBAction)mainMenu:(id)sender {
    [CallPhp incrementRun:@"button=competition_menu"];
}

@end
