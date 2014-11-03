//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CNTCounterProtocols.h"

@class CNTCounterPresenter;

@interface CNTCounterViewController : UIViewController <CNTCounterViewProtocol>

@property (nonatomic, strong) CNTCounterPresenter *presenter;

/**
 * This properties are here for tests only,
 * they should be in .m file instead when no tests needed
 */
@property (nonatomic, weak) IBOutlet UILabel *countLabel;
@property (nonatomic, weak) IBOutlet UIButton *decrementButton;
@property (nonatomic, weak) IBOutlet UIButton *incrementButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@end
