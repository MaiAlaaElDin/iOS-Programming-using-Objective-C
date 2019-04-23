//
//  ViewController.h
//  Lab6.1_MapDemo
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property CLLocationManager* locationManager;

@end

