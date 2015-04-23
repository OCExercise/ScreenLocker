//
//  Installer.m
//  ScreenLocker
//
//  Created by Presley Cannady on 4/23/15.
//  Copyright (c) 2015 Correlate Systems. All rights reserved.
//

#import "Installer.h"

@interface Installer()

@property (nonatomic, assign) BOOL isInstalled;

@end

@implementation Installer


- (instancetype) init {
    if (self = [super init]) {
        
    }
    
    return self;
}

+ (Installer *) sharedInstance {
    
    static Installer * installer = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        installer = [[Installer alloc] init];
    });
    
    return installer;
    
}

- (BOOL) isServiceInstalled {
    return _isInstalled;
}

- (void) install {
    _isInstalled = true;
}

- (void) uninstall {
    _isInstalled = false;
}

@end
