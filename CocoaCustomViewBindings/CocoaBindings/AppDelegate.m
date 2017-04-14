//
//  AppDelegate.m
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/8/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ColorCodes.h"
#import "CustomBoxView.h"
#import "MyColors.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

@synthesize boxView = _boxView;

@synthesize colorCodes = _colorCodes;


- (void) awakeFromNib {

    // Bind custo box view color properties with MyColor color's properties.
    // Change in text field values on color will change the color of custom view
    [self.boxView bind:@"red"
              toObject:self.colorCodes.myColors
           withKeyPath:@"redColor"
               options:nil];
    
    [self.boxView bind:@"green"
              toObject:self.colorCodes.myColors
           withKeyPath:@"greenColor"
               options:nil];

    [self.boxView bind:@"blue"
              toObject:self.colorCodes.myColors
           withKeyPath:@"blueColor"
               options:nil];

}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
        
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction)showpieChart:(id)sender
{
    self.chartWindowController = [[ChartWindowController alloc] initWithWindowNibName:@"PieChartWindow"];
    
    // Set the delegate for chartWindowController
    [self.chartWindowController setAppDelegate:self];
    
    [self.window addChildWindow:[self.chartWindowController window] ordered:NSWindowBelow];
    
}

-(ColorCodes*) colorsFromWindow
{
    return self.colorCodes;
}


@end
