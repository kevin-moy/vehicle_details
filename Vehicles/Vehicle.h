//
//  Vehicle.h
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
@property (nonatomic, assign) NSInteger numberOfWheels;
@property (nonatomic, copy) NSString *powerSource;
@property (nonatomic, copy) NSString *brandName;
@property (nonatomic, copy) NSString *modelName;
@property (nonatomic, assign) NSInteger modelYear;

- (NSString *)goForward;
- (NSString *)goBackward;
- (NSString *)stopMoving;
- (NSString *)changeGears:(NSString *)newGearName;
- (NSString *)turn:(NSInteger)degrees;
- (NSString *)makeNoise;
//Get vehicle's details
- (NSString *)vehicleDetailsString;

//method for UITAblesviewcells and UINavigationBar titles
- (NSString *)vehicleTitleString;

//Factory Method

+ (instancetype)vehicleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels;

@end
