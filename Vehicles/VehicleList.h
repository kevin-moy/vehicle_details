//
//  VehicleList.h
//  Vehicles
//
//  Created by Kevin Moy on 6/9/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleList : NSObject
@property (nonatomic, strong) NSArray *vehicles;

//Singleton Instance
+ (VehicleList *)sharedInstance;
@end
