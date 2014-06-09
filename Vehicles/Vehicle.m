//
//  Vehicle.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
- (NSString *)goForward
{
    return nil;
}
- (NSString *)goBackward
{
    return nil;
}
- (NSString *)stopMoving
{
    return nil;
}
- (NSString *)turn:(NSInteger)degrees
{
    NSInteger degreesInACircle = 360;
    if (degrees > degreesInACircle || degrees < -degreesInACircle)
    {
        degrees = degrees % degreesInACircle;
    }
    return [NSString stringWithFormat:@"Turn %d degrees.", degrees];
}
- (NSString *)changeGears:(NSString *)newGearName
{
    return [NSString stringWithFormat:@"Put %@ into %@ gear.", self.modelName, newGearName];
}
- (NSString *)makeNoise
{
    return nil;
}
#pragma mark - Convenience Methods
-(NSString *)vehicleTitleString
{
    return [NSString stringWithFormat:@"%d %@ %@", self.modelYear, self.brandName, self.modelName];
}
- (NSString *)vehicleDetailsString
{
    NSMutableString *basicDetailsString = [NSMutableString string];
    [basicDetailsString appendString:@"Basic vehicle details:\n\n"];
    [basicDetailsString appendFormat:@"Brand name %@\n", self.brandName];
    [basicDetailsString appendFormat:@"Model name %@\n", self.modelName];
    [basicDetailsString appendFormat:@"Model year %d\n", self.modelYear];
    [basicDetailsString appendFormat:@"Power source %@\n", self.powerSource];
    [basicDetailsString appendFormat:@"# of wheels: %d\n", self.numberOfWheels];
    
    return [basicDetailsString copy];
}
#pragma mark - Factory method
+ (instancetype)vehicleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels;
{
    //Use self in superclass to ensure proper returns type of each subclass
    Vehicle *newVehicle = [[self alloc] init];
    
    //Set provided values to appropriate variables
    newVehicle.brandName = brandName;
    newVehicle.modelName = modelName;
    newVehicle.modelYear = modelYear;
    newVehicle.powerSource = powerSource;
    newVehicle.numberOfWheels = numberOfWheels;
    
    return newVehicle;
}
@end
