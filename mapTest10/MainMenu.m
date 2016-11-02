//
//  MainView.m
//  mapTest10
//
//  Created by Ber Jr on 2016-09-26.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "CallPhp.h"
#import "MainMenu.h"

@import UIKit;

@interface MainMenu ()
@property (weak, nonatomic) IBOutlet UILabel *totalPointsLabel;
@property (weak, nonatomic) IBOutlet UIButton *leaderBoardButton;
@property (weak, nonatomic) IBOutlet UIButton *partyRunButton;
@property (weak, nonatomic) IBOutlet UIButton *competitionModeButton;
@property (weak, nonatomic) IBOutlet UIButton *chatButton;
@property (weak, nonatomic) IBOutlet UIButton *trailButton;
@property (weak, nonatomic) IBOutlet UIImageView *mainMenuImage;

@end

@implementation MainMenu{
    NSString * totalPoints;
    NSString * totalDistance;
    int totalPointsInt;
    UIImage * hiddenImage;
}

@synthesize SentPoints;

- (void) viewDidLoad{
    [super viewDidLoad];
    if(SentPoints == @"200"){
        totalPointsInt += 200 + totalPointsInt;
        totalPoints = [NSString stringWithFormat:@"%d",totalPointsInt];
        totalDistance = [NSString stringWithFormat:@"%d m", totalPointsInt];
        [_totalPointsLabel setText:totalPoints];
        [_totalMeters setText:totalDistance];
    }
    
    NSError *error;
    NSString *url_string = [NSString stringWithFormat: @"http://www.fsociety777.site/run/selectHide.php"];
    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:url_string]];
    NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSString *hidden = [json valueForKey:@"hideColumn"];
    
    hiddenImage = [UIImage imageNamed:@"main_unhidden.jpg"];
    
    [self.leaderBoardButton setEnabled:NO];
    [self.partyRunButton setEnabled:NO];
    [self.competitionModeButton setEnabled:NO];
    [self.chatButton setEnabled:NO];
    [self.trailButton setEnabled:NO];
    
    
    if([hidden  isEqual: @"1"]){
        [self.leaderBoardButton setEnabled:NO];
        [self.partyRunButton setEnabled:NO];
        [self.competitionModeButton setEnabled:NO];
        [self.chatButton setEnabled:NO];
        [self.trailButton setEnabled:NO];
    } else if ([hidden isEqual : @"0"]){
        [self.leaderBoardButton setEnabled:YES];
        [self.partyRunButton setEnabled:YES];
        [self.competitionModeButton setEnabled:YES];
        [self.chatButton setEnabled:YES];
        [self.trailButton setEnabled:YES];
        [self.mainMenuImage setImage:hiddenImage];
    }
}

- (IBAction)startRunning:(id)sender {
        [CallPhp incrementRun:@"button=main_startRunning"];
}
- (IBAction)leaderBoard:(id)sender {
        [CallPhp incrementRun:@"button=main_leaderBoard"];
}
- (IBAction)partyRun:(id)sender {
        [CallPhp incrementRun:@"button=main_partyRun"];
}
- (IBAction)competition:(id)sender {
        [CallPhp incrementRun:@"button=main_competition"];
}
- (IBAction)chat:(id)sender {
        [CallPhp incrementRun:@"button=main_chat"];
}
- (IBAction)trail:(id)sender {
        [CallPhp incrementRun:@"button=main_trail"];
}

@end


