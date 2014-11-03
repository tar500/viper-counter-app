//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsViewController.h"
#import "CNTSettingsPresenter.h"

@interface CNTSettingsViewController()

@end


@implementation CNTSettingsViewController


#pragma mark - ViewController Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.presenter updateView];
    
}

#pragma mark - View protocol methods

/** PRESENTER -> VIEW methods */


#pragma mark - IB Actions

/**
 * Connect interface builder actions here and pass them to the Presenter
 */

@end