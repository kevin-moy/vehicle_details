//
//  Motorcycle.h
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Motorcycle : Vehicle
@property (nonatomic, strong) NSString *engineNoise;
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise;
@end
