//
//  Motorcycle.m
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Motorcycle.h"

@implementation Motorcycle

#pragma mark - Factory method
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise
{
    Motorcycle *newMotorcycle = [Motorcycle vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:@"gas engine" wheels:2];

    newMotorcycle.engineNoise = engineNoise;
    
    return newMotorcycle;
}
- (id)init
{
    if (self = [super init]) {
        self.numberOfWheels = 2;
        self.powerSource = @"gas engine";
    }
    return self;
}

#pragma mark - Superclass Overrides
-(NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Open throttle.", [self changeGears:@"Forward"]];
}

-(NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ Walk %@ backwards using feet.", [self changeGears:@"Neutral"], self.modelName];
}

-(NSString *)stopMoving
{
    return @"Squeeze brakes.";
}

-(NSString *)makeNoise
{
    return self.engineNoise;
}

- (NSString *)vehicleDetailsString
{
    //Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *motorcycleDetailsBuilder = [NSMutableString string];
    [motorcycleDetailsBuilder appendString:@"\n\nMotorcycle-Specific Details:\n\n"];
    
    //Add info about motorcycle-specific features.
    [motorcycleDetailsBuilder appendFormat:@"Engine Noise: %@", self.engineNoise];
    
    //Create the final string by combining basic and motorcycle-specific details.
    NSString *motorcycleDetails = [basicDetails stringByAppendingString:motorcycleDetailsBuilder];
    
    return motorcycleDetails;
}

@end
