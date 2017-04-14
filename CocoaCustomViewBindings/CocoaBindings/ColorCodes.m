//
//  ColorCodes.m
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/8/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "ColorCodes.h"
#import "MyColors.h"
#import "NSColor+Extension.h"

@implementation ColorCodes

- (instancetype)init
{
    self = [super init];
    if (self) {
    
        _myColors = [[MyColors alloc] init];
        
        self.myColors.redColor = 0;

        self.myColors.blueColor = 0;

        self.myColors.greenColor = 0;
        
        // please Ignore this part. This was done to change the box's text color property from interface builder.
        [self.myColors addObserver:self forKeyPath:@"redColor" options:NSKeyValueObservingOptionNew context:nil];
        
        [self.myColors addObserver:self forKeyPath:@"greenColor" options:NSKeyValueObservingOptionNew context:nil];
        
        [self.myColors addObserver:self forKeyPath:@"blueColor" options:NSKeyValueObservingOptionNew context:nil];
        
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"redColor"] || [keyPath isEqualToString:@"blueColor"] || [keyPath isEqualToString:@"greenColor"])
    {

        // Observting the change in text fields and setting the colorFromPercentages, which eventually is binded with text color of bottom Box. thsi was done to test the bindings via interface builder.
        self.myColors.colorFromPercentages = [NSColor colorWithRedPercentage:_myColors.redColor bluePercentage:_myColors.blueColor greenPercentage:_myColors.greenColor];
        
        //[NSColor colorWithSRGBRed:self.myColors.redColor.doubleValue green:self.myColors.greenColor.doubleValue blue:self.myColors.blueColor.doubleValue alpha:2];
        
    }
}


-(void)dealloc
{
    [self.myColors removeObserver:self forKeyPath:@"redColor"];
    
    [self.myColors removeObserver:self forKeyPath:@"greenColor"];
    
    [self.myColors removeObserver:self forKeyPath:@"blueColor"];
}

@end
