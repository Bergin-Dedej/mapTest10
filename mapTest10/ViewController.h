//
//  ViewController.h
//  mapTest10
//
//  Created by Ber Jr on 2016-09-21.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@import GoogleMaps;

@interface ViewController : UIViewController <CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet GMSMapView *mapView;

@end
