//
//  MainMenu.h
//  mapTest10
//
//  Created by Ber Jr on 2016-10-21.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenu : UIViewController
{
    NSString *SentPoints;
}

@property (nonatomic) NSString * SentPoints;
@property (weak, nonatomic) IBOutlet UILabel *totalMeters;

@end
