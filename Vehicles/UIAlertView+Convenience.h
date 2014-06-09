//
//  UIAlertView+Conveinience.h
//  Vehicles
//
//  Created by Kevin Moy on 6/6/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Conveinience)

// Shows a UIAlertView with the given title and message, and an OK button to dismiss it.
+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message;
@end
