//
//  ViewController.m
//  mapTest10
//
//  Created by Ber Jr on 2016-09-21.
//  Copyright © 2016 Ber Jr. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import <MapKit/MapKit.h>
@import WatchConnectivity;

@interface ViewController () <WCSessionDelegate>

@end

@implementation ViewController {
    CLLocationManager *locationManager;
    CLLocationDistance distanceRun;
    int distanceRunInt;
    GMSCameraPosition *camera;
    //GMSMapView *mapView;
    double startLatitude;
    double startLongitude;
    CLLocationCoordinate2D startLocation;
}

- (void) loadView{
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {

    MKMapPoint p1 = MKMapPointForCoordinate(startLocation);
    MKMapPoint p2 = MKMapPointForCoordinate(locationManager.location.coordinate);
    distanceRun = MKMetersBetweenMapPoints(p1, p2);
    
    if(distanceRun >= 150){
        NSString *congrats = @"Congrats you ran past 150 meters!";
        NSLog(congrats);
    }
    NSString *myString = [NSString stringWithFormat:@"%f", distanceRun];
    distanceRunInt = distanceRun;
    NSLog(myString);
    [self sendToWatch];

    camera = [GMSCameraPosition cameraWithLatitude:locationManager.location.coordinate.latitude longitude:locationManager.location.coordinate.longitude zoom:17];
    [_mapView animateToCameraPosition:camera];
 
}

- (void)sendToWatch {
    NSDictionary *applicationData = [[NSDictionary alloc] initWithObjects:@[[NSString stringWithFormat:@"%d", distanceRunInt]]
                                                                  forKeys:@[@"distanceRun"]];
    
    
    [[WCSession defaultSession] sendMessage:applicationData
                               replyHandler:^(NSDictionary *reply) {
                                   //handle reply form Iphone app here
                               }
                               errorHandler:^(NSError *error) {
                                   //catch any errors here
                               }
     ];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager requestWhenInUseAuthorization];
    [locationManager startUpdatingLocation];
    
    startLatitude = locationManager.location.coordinate.latitude;
    startLongitude = locationManager.location.coordinate.longitude;
    startLocation = locationManager.location.coordinate;
    
    camera = [GMSCameraPosition cameraWithLatitude:locationManager.location.coordinate.latitude longitude:locationManager.location.coordinate.longitude zoom:17];

    _mapView = [GMSMapView mapWithFrame:CGRectMake(0,0,100,100) camera:camera];
    _mapView.myLocationEnabled = YES;
    UIEdgeInsets mapInsets = UIEdgeInsetsMake(100, 0, 0, 300);
    //_mapView.padding = mapInsets;
    self.view = _mapView;
    CLLocationCoordinate2D circleCenter = CLLocationCoordinate2DMake(locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude);
    GMSCircle *circ = [GMSCircle circleWithPosition:circleCenter radius:150];
    circ.map = _mapView;
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(locationManager.location.coordinate.latitude,locationManager.location.coordinate.latitude);
    marker.title = @"100 Points";
    marker.snippet = @"Star";
    marker.map = _mapView;    // Do any additional setup after loading the view, typically from a nib.
    
    if ([WCSession isSupported])
    {
        WCSession* session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
