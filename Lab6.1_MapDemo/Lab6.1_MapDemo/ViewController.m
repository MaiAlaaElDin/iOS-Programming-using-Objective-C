//
//  ViewController.m
//  Lab6.1_MapDemo
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"
#import "MADAnnotation.h"
@interface ViewController ()
- (IBAction)click:(id)sender;

@end

@implementation ViewController


#pragma mark : Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_mapView setZoomEnabled:NO];
    [_mapView setDelegate:self];
    //_mapView.delegate = self;
    
    //Location Manager
    _locationManager = [CLLocationManager new];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDelegate:self];
    
    //2nd step to not forget
    [_locationManager startUpdatingLocation];
    [_locationManager requestAlwaysAuthorization];
}

- (void)viewWillAppear:(BOOL)animated{
    
}

- (void)viewDidAppear:(BOOL)animated{
    
}


#pragma mark : Map View Methods of Delegate

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
    
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("regionDidChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("Annotation Selected\n");
    printf("%s",[view.annotation.title UTF8String]);
}


#pragma mark : Location Manager Methods of Delegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation* location = [locations lastObject];
    printf("Lat = %f, Lng = %f\n",location.coordinate.latitude,location.coordinate.longitude);
    printf("Updated Location\n");
}


#pragma mark : IBActions Methods

- (IBAction)click:(id)sender {
    
    CGPoint touchPoint = [sender locationInView:_mapView];
    CLLocationCoordinate2D touchCoodinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    
    MADAnnotation* myAnnotation = [MADAnnotation new];
    myAnnotation.coordinate = touchCoodinate;
    myAnnotation.title = @"MAD";
    myAnnotation.subtitle = @"iOS";
    
    [_mapView addAnnotation:myAnnotation];
}
@end
