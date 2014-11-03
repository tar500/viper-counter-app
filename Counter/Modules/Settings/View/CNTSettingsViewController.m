//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsViewController.h"
#import "CNTSettingsPresenter.h"

@interface CNTSettingsViewController()
@property (strong, nonatomic) IBOutlet UISwitch *displayNumbersAsWordsSwitch;

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

- (void)setDisplayNumbersAsWordsEnabled:(BOOL)enabled {
    self.displayNumbersAsWordsSwitch.on = enabled;
}


#pragma mark - IB Actions

/**
 * Connect interface builder actions here and pass them to the Presenter
 */

- (IBAction)closeAction:(id)sender
{
    
    [self.presenter requestClose];
}

- (IBAction)displayNumbersAsWordsSwitchValueChanged:(UISwitch *)sender
{
    [self.presenter changeDisplayNumbersAsWordsSettingValue:sender.isOn];
}

@end