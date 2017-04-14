//
//  ChartWindowController.h
//  CocoaBindings
//
//  Created by Manish Chaturvedi on 4/9/17.
//  Copyright © 2017 Apple. All rights reserved.
//

@class MyColors;

@class AppDelegate;

@interface ChartWindowController : NSWindowController

@property (weak) IBOutlet NSTextField *redColorTextField;

@property (weak) IBOutlet NSTextField *blueColorTextField;

@property (weak) IBOutlet NSTextField *greenColorTextField;

@property (nonatomic, weak) AppDelegate *appDelegate;

@property (nonatomic, strong) MyColors *colors;


@end
