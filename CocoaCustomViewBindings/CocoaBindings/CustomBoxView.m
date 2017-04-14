
//
//  MyColors.h
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/8/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "CustomBoxView.h"
#import "NSColor+Extension.h"


@implementation CustomBoxView

@synthesize red;
@synthesize green;
@synthesize blue;

- (void) setRed:(CGFloat)newRed{
	red = newRed;
	[self setNeedsDisplay:YES];
}

- (void) setGreen:(CGFloat)newGreen{
    green = newGreen;
    [self setNeedsDisplay:YES];
}

- (void) setBlue:(CGFloat)newBlue{
    blue = newBlue;
    [self setNeedsDisplay:YES];
}

// Draw the custom view, where ever there is a change in any of the color properties.
- (void) drawRect:(NSRect)dirtyRect {

    // TODO:colorWithRedPercentage should be enhanced to handle the percentages correctly.
    NSColor *color = [NSColor colorWithRedPercentage:red bluePercentage:blue greenPercentage:green];
    
	[color setFill];
	NSRectFill(dirtyRect);
}

@end
