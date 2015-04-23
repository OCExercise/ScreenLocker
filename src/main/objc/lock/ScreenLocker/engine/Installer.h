//
//  Installer.h
//  ScreenLocker
//
//  Created by Presley Cannady on 4/23/15.
//  Copyright (c) 2015 Correlate Systems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Installer : NSObject

- (instancetype) init;
+ (Installer *) sharedInstance;

- (BOOL) isServiceInstalled;
- (void) install;
- (void) uninstall;

@end
