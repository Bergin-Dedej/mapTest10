//
//  CallPhp.m
//  mapTest10
//
//  Created by Ber Jr on 2016-10-15.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallPhp.h"

@interface CallPhp ()
@end

@implementation CallPhp {
}

+ (void)incrementRun:(NSString *)variables {
    NSString *URL = [NSString stringWithFormat:@"http://www.fsociety777.site/run/increment_run_analytics.php?%@",variables];
    NSMutableURLRequest *request =
    [[NSMutableURLRequest alloc] initWithURL:
     [NSURL URLWithString:URL]];
    
    [[NSURLConnection alloc]
     initWithRequest:request delegate:self];
}

@end
