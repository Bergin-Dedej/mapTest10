//
//  LeaderBoard.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-03.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

@interface LeaderBoard: UIViewController

@end

@implementation LeaderBoard

- (void) viewDidLoad{
    [super viewDidLoad];
    
}

- (IBAction)view:(id)sender {

    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=leaderBoard_view"]];

    [[NSURLConnection alloc] 
     initWithRequest:request delegate:self];
}

- (IBAction)mainMenu:(id)sender {
    
}

@end
