//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CNTSettingsProtocols.h"

@class CNTSettingsPresenter;

@interface CNTSettingsViewController : UIViewController <CNTSettingsViewProtocol>

@property (nonatomic, strong) CNTSettingsPresenter *presenter;

@end
