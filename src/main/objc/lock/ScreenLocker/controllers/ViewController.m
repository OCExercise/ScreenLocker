//
//  ViewController.m
//  ScreenLocker
//
//  Created by Presley Cannady on 4/23/15.
//  Copyright (c) 2015 Correlate Systems. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    [self setInstallOrRemoveServicesBtnState];
    [_installOrRemoveServicesBtn setAction:@selector(installOrRemoveService)];

    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void) setInstallOrRemoveServicesBtnState {
    
    NSString * installOrRemoveBtnText;
    if ([[Installer sharedInstance] isServiceInstalled]) {
        installOrRemoveBtnText = @"Uninstall Service";
    } else {
        installOrRemoveBtnText = @"Install Service";
    }
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        _installOrRemoveServicesBtn.title = installOrRemoveBtnText;
        
        NSString * formatted = [NSString stringWithFormat:@"%@\n", installOrRemoveBtnText];
        NSAttributedString * text = [[NSAttributedString alloc] initWithString:formatted];
        [[_logView textStorage] appendAttributedString:text];
    }];

}

- (void) installOrRemoveService {
    Installer * installer = [Installer sharedInstance];
    if ([installer isServiceInstalled]) {
        [installer uninstall];
    } else {
        [installer install];
    }
    
    [self setInstallOrRemoveServicesBtnState];
}

@end
