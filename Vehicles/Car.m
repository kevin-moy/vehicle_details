//
//  Car.m
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car
#pragma mark - Factory Method
+(Car *)carWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource numberOfDoors:(NSInteger)numberOfDoors convertible:(BOOL)isConvertible hatchback:(BOOL)isHatchback sunroof:(BOOL)hasSunroof
{
    //Create car using superclass factory method
    Car *newCar = [Car vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:powerSource wheels:4];
    
    //Set car-specific properties using passed in variables
    newCar.numberOfDoors = numberOfDoors;
    newCar.isConvertible = isConvertible;
    newCar.isHatchback = isHatchback;
    newCar.hasSunroof = hasSunroof;
    
    return newCar;
}
//init method 
/*- (id)init
{
    if (self = [super init]) {
        self.numberOfWheels = 4;
    }
    return self;
}
 */
// Super class overrides
- (NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@", self.powerSource];
}
- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Foward"]];
    
}
- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}
- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}
- (NSString *)makeNoise
{
    return @"beep beep";
}
- (NSString *)vehicleDetailsString
{
    //Get details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *carDetailsBuilder = [NSMutableString string];
    [carDetailsBuilder appendString:@"\n\nCar-Specific Details:\n\n"];
    
    // String helpers for bolleans
    NSString *yes = @"Yes\n";
    NSString *no = @"No\n";
    
    //Add info about car specific features.
    [carDetailsBuilder appendString:@"Has sunroof: "];
    if (self.hasSunroof) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Hatchback: "];
    if (self.isHatchback) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Convertible: "];
    if (self.isConvertible) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendFormat:@"Number of doors: %d", self.numberOfDoors];
    
    NSString *carDetails = [basicDetails stringByAppendingString:carDetailsBuilder];
    
    return carDetails;
}
@end
