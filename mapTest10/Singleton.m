//
//  Singleton.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-17.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

@interface Singleton ()
@end

@implementation Singleton

- (NSString*)getPoints {
    return totalPoints;
}

- (void)setPoints:(NSString*)points {
    int totalPointsInt = (int)totalPoints;
    totalPointsInt = totalPointsInt + (int)points;
    totalPoints = [NSString stringWithFormat:@"%d",totalPointsInt];
}

@end
