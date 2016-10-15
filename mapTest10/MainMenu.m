//
//  MainView.m
//  mapTest10
//
//  Created by Ber Jr on 2016-09-26.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

@interface MainMenu: UIViewController

@end

@implementation MainMenu

- (void) viewDidLoad{
    [super viewDidLoad];
    
}

- (IBAction)startRunning:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_startRunning"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}
- (IBAction)leaderBoard:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_leaderBoard"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}
- (IBAction)partyRun:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_partyRun"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}
- (IBAction)competition:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_competition"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}
- (IBAction)chat:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_chat"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}
- (IBAction)trail:(id)sender {
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:@"http://www.fsociety777.site/run/increment_run_analytics.php?button=main_trail"]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}

@end


