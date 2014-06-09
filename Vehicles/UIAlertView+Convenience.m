//
//  UIAlertView+Conveinience.m
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "UIAlertView+Convenience.h"

@implementation UIAlertView (Conveinience)
+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
    [simpleAlert show];
}
@end
