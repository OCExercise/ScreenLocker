//
//  ViewController.h
//  ScreenLocker
//
//  Created by Presley Cannady on 4/23/15.
//  Copyright (c) 2015 Correlate Systems. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "Installer.h"

@interface ViewController : NSViewController

@property (nonatomic, assign, readwrite) IBOutlet NSTextView * logView;
@property (nonatomic, assign, readwrite) IBOutlet NSButton * lockScreenBtn;
@property (nonatomic, assign, readwrite) IBOutlet NSButton * installOrRemoveServicesBtn;


@end

