//
//  NSColor+Extension.m
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/8/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "NSColor+Extension.h"

@implementation NSColor (Extension)

// TODO: This need to extended correctly to convert the % values to their components.
// As of now each % attributes to 2.55. Assuming that instead of actul values which between 0-255 any value bewteen 0-100 is eneted and then eventuall calculating the component values.
+ (NSColor *)colorWithRedPercentage:(CGFloat)red  bluePercentage:(CGFloat)blue greenPercentage:(CGFloat)green
{
    CGFloat redColorCode = red * 2.55;
    CGFloat blueColorCode = blue * 2.55;
    CGFloat greenColorCode = green * 2.55;
    
    NSColor *colorFromPercentage = [NSColor colorWithCalibratedRed:redColorCode green:greenColorCode blue:blueColorCode alpha:1.0];
    
    return colorFromPercentage;
}


@end
