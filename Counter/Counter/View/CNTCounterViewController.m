//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTCounterViewController.h"
#import "CNTCounterPresenter.h"

@interface CNTCounterViewController()



@end


@implementation CNTCounterViewController


#pragma mark - ViewController Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.countLabel.text = nil;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.presenter updateView];
    
}


#pragma mark - View protocol methods

/** PRESENTER -> VIEW methods */

- (void)setCountText:(NSString*)countText
{
    self.countLabel.text = countText;
}


- (void)setDecrementEnabled:(BOOL)enabled
{
    self.decrementButton.enabled = enabled;
}

- (void)setResetEnabled:(BOOL)enabled {
    self.resetButton.enabled = enabled;
}


#pragma mark - IB Actions

/**
 * Connect interface builder actions here and pass them to the Presenter
 */

- (IBAction)increment:(id)sender
{
    [self.presenter requestIncrementCount];
}


- (IBAction)decrement:(id)sender
{
    [self.presenter requestDecrementCount];
}

- (IBAction)resetAction:(id)sender {
    [self.presenter requestResetCount];
}


@end