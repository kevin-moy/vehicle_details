//
//  MasterViewController.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "VehicleListTableViewController.h"

#import "VehicleDetailViewController.h"
#import "Vehicle.h"
#import "VehicleList.h"

@interface VehicleListTableViewController ()
@property (nonatomic, strong) NSMutableArray *vehicles;
@end

@implementation VehicleListTableViewController

#pragma mark - View Lifecycle
- (void)awakeFromNib
{
    [super awakeFromNib];
/*    //Initialize vehicle array
    self.vehicles = [NSMutableArray array];
    
    //Call setup method
   [self setupVehicleArray];
*/
    //Set title of view controller, will display in navigation bar
    self.title = @"Vehicles";
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*  Using Singleton Pattern
 
 #pragma mark - Data setup
-(void)setupVehicleArray
{
    // Creates a car
    //Create car with init method
    Car *mustang = [[Car alloc] init];
    mustang.brandName = @"Ford";
    mustang.modelName = @"Mustang";
    mustang.modelYear = 1968;
    mustang.isConvertible = YES;
    mustang.isHatchback = NO;
    mustang.hasSunroof = NO;
    mustang.numberOfDoors = 2;
    mustang.powerSource = @"gas engine";
 
    //Using factory class method
    Car *mustang = [Car carWithBrandName:@"Ford" modelName:@"Mustang" modelYear:1968 powerSource:@"gas engine" numberOfDoors:2 convertible:YES hatchback:NO sunroof:NO];
    // Add to array
    [self.vehicles addObject:mustang];
    
    //Create another car.
    Car *outback = [Car carWithBrandName:@"Subaru" modelName:@"Outback" modelYear:1999 powerSource:@"gas engine" numberOfDoors:5 convertible:NO hatchback:YES sunroof:NO];
    
    //Add it to the array.
    [self.vehicles addObject:outback];
    
    Car *prius = [Car carWithBrandName:@"Toyota" modelName:@"Prius" modelYear:2007 powerSource:@"hybrid engine" numberOfDoors:5 convertible:YES hatchback:YES sunroof:YES];

    //Add it to the array.
    [self.vehicles addObject:prius];
    
    //Create a motorcycle
    Motorcycle *harley = [Motorcycle motorcycleWithBrandName:@"Harley-Davidson"modelName:@"Softail" modelYear:1979 engineNoise:@"Vrrrrrrrroooooooooom!"];
    //Add to array
    [self.vehicles addObject:harley];
    
    Motorcycle *kawasaki = [Motorcycle motorcycleWithBrandName:@"Kawasaki"modelName:@"Ninja" modelYear:2005 engineNoise:@"Neeeeeeeeeeeeeeeeow!"];
    
    
    //Add it to the array
    [self.vehicles addObject:kawasaki];
    
    //Create a truck
    Truck *silverado = [Truck truckWithBrandName:@"Chevrolet" modelName:@"Silverado" modelYear:2011 powerSource:@"gas engine" wheels:4 cargoCapacityCubicFeet:53];
    
    //Add it to the array
    [self.vehicles addObject:silverado];
    
    Truck *eighteenWheeler = [Truck truckWithBrandName:@"Peterbilt" modelName:@"579" modelYear:2013 powerSource:@"diesel engine" wheels:18 cargoCapacityCubicFeet:408];
    
    //Add it to the array
    [self.vehicles addObject:eighteenWheeler];

    NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
    [self.vehicles sortUsingDescriptors:@[modelYear]];
}
*/

#pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[VehicleList sharedInstance] vehicles].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Vehicle *vehicle = [[VehicleList sharedInstance] vehicles][indexPath.row];
    cell.textLabel.text = [vehicle vehicleTitleString];
    return cell;
}

#pragma mark - Segue Handling
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Vehicle *selectedVehicle = [[VehicleList sharedInstance] vehicles][indexPath.row];
        [[segue destinationViewController] setDetailVehicle:selectedVehicle];
    }
}

@end
