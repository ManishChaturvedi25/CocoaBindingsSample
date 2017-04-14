//
//  ChartWindowController.m
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/9/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "ChartWindowController.h"
#import "AppDelegate.h"
#import "ColorCodes.h"
#import "MyColors.h"

@interface ChartWindowController ()

@end

@implementation ChartWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


-(void) awakeFromNib
{
    // Pull the color code details from AppDelegate via  appDelegate
    
    ColorCodes *codesReturned  = [self.appDelegate colorsFromWindow];
    
    self.redColorTextField.floatValue = codesReturned.myColors.redColor;

    self.blueColorTextField.floatValue = codesReturned.myColors.blueColor;

    self.greenColorTextField.floatValue = codesReturned.myColors.greenColor;
    
    // TODO: 4/09
    /*
     * Implement the custom view present on PieChartWindow to draw the % enetered on 1st window.
     */
    
}
@end
