//
//  VehicleList.m
//  Vehicles
//
//  Created by Kevin Moy on 6/9/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "VehicleList.h"
#import "Car.h"
#import "Motorcycle.h"
#import "Truck.h"

@implementation VehicleList
+ (VehicleList *)sharedInstance
{
    //Declare static instance variable
    static VehicleList *_vehicleList = nil;
    
    //Create a token that facilitates only creating this item once
    static dispatch_once_t onceToken;
    
    //Use grand central dispatch to create a single instance and do any initial setup once
    dispatch_once(&onceToken, ^{
        //These are only invoked the onceToken has never been used before.
        _vehicleList = [[VehicleList alloc] init];
        _vehicleList.vehicles = [VehicleList initialVehicleList];
    });
    return _vehicleList;
}
+ (NSArray *)initialVehicleList
{
    //Initialize mutable array.
    NSMutableArray *vehicles = [NSMutableArray array];
    
    //Using factory class method
    Car *mustang = [Car carWithBrandName:@"Ford" modelName:@"Mustang" modelYear:1968 powerSource:@"gas engine" numberOfDoors:2 convertible:YES hatchback:NO sunroof:NO];
    // Add to array
    [vehicles addObject:mustang];
    
    //Create another car.
    Car *outback = [Car carWithBrandName:@"Subaru" modelName:@"Outback" modelYear:1999 powerSource:@"gas engine" numberOfDoors:5 convertible:NO hatchback:YES sunroof:NO];
    
    //Add it to the array.
    [vehicles addObject:outback];
    
    Car *prius = [Car carWithBrandName:@"Toyota" modelName:@"Prius" modelYear:2007 powerSource:@"hybrid engine" numberOfDoors:5 convertible:YES hatchback:YES sunroof:YES];
    
    //Add it to the array.
    [vehicles addObject:prius];
    
    //Create a motorcycle
    Motorcycle *harley = [Motorcycle motorcycleWithBrandName:@"Harley-Davidson"modelName:@"Softail" modelYear:1979 engineNoise:@"Vrrrrrrrroooooooooom!"];
    //Add to array
    [vehicles addObject:harley];
    
    Motorcycle *kawasaki = [Motorcycle motorcycleWithBrandName:@"Kawasaki"modelName:@"Ninja" modelYear:2005 engineNoise:@"Neeeeeeeeeeeeeeeeow!"];
    
    
    //Add it to the array
    [vehicles addObject:kawasaki];
    
    //Create a truck
    Truck *silverado = [Truck truckWithBrandName:@"Chevrolet" modelName:@"Silverado" modelYear:2011 powerSource:@"gas engine" wheels:4 cargoCapacityCubicFeet:53];
    
    //Add it to the array
    [vehicles addObject:silverado];
    
    Truck *eighteenWheeler = [Truck truckWithBrandName:@"Peterbilt" modelName:@"579" modelYear:2013 powerSource:@"diesel engine" wheels:18 cargoCapacityCubicFeet:408];
    
    //Add it to the array
    [vehicles addObject:eighteenWheeler];
    
    NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
    [vehicles sortUsingDescriptors:@[modelYear]];
    
    return vehicles;
}
@end
