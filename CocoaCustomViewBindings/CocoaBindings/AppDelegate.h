//
//  AppDelegate.h
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/8/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "ChartWindowController.h"

@class CustomBoxView;
@class ColorCodes;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet CustomBoxView *boxView;

@property (weak) IBOutlet ColorCodes *colorCodes;

@property (strong) ChartWindowController *chartWindowController;

-(IBAction)showpieChart:(id)sender;

-(ColorCodes*) colorsFromWindow;

@end

