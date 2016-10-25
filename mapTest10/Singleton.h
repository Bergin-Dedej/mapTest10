//
//  Singleton.h
//  mapTest10
//
//  Created by Ber Jr on 2016-10-17.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton: NSObject
   extern NSString * totalPoints;

+ (NSString*)getPoints;
+ (void)setPoints:(NSString *)points;

@end

