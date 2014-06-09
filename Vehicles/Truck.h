//
//  Truck.h
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Truck : Vehicle
@property (nonatomic, assign) NSInteger cargoCapacityCubicFeet;
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubpicFeet;
@end
