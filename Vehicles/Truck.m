//
//  Truck.m
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Truck.h"

@implementation Truck
#pragma  mark - Superclass override

- (NSString *)goFoward
{
    return [NSString stringWithFormat:@"%@ Depress gas pedal.", [self changeGears:@"Drive"]];
}
- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}
- (NSString *)goBackward
{
    NSMutableString *backwardString = [NSMutableString string];
    if (self.cargoCapacityCubicFeet > 100) {
        [backwardString appendFormat:@"Wait for \"%@\", then %@", [self soundBackupAlarm], [self changeGears:@"Reverse"]];
    }
    else {
        [backwardString appendFormat:@"%@ Depress gas pedal.", [self changeGears:@"Reverse"]];
    }
    return backwardString;
}
#pragma mark - Private methods
- (NSString *)soundBackupAlarm
{
    return @"Beep";
}
- (NSString *)makeNoise
{
    if (self.numberOfWheels <=4) {
        return @"beep beep";
    }
    else if (self.numberOfWheels >4 && self.numberOfWheels <= 8) {
        return @"HONK";
    }
    else {
        return @"HOOOOOOOOOOOOONK MOVE";
        }
}
- (NSString *)vehicleDetailsString
{
    NSString *basicDetails = [super vehicleDetailsString];
    
    NSMutableString *truckDetailsBuilder = [NSMutableString string];
    [truckDetailsBuilder appendString:@"\n\nTruck-Specific Details:\n\n"];
    
    [truckDetailsBuilder appendFormat:@"Cargo Capacity: %d cubic feet", self.cargoCapacityCubicFeet];
    
    NSString *truckDetails = [basicDetails stringByAppendingString:truckDetailsBuilder];
    
    return truckDetails;
}
@end
