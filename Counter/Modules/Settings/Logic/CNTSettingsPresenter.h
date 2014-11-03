//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNTSettingsProtocols.h"

@class CNTSettingsWireframe;

@interface CNTSettingsPresenter : NSObject <CNTSettingsInteractorOutputProtocol>

@property (nonatomic, weak) id <CNTSettingsViewProtocol> view;
@property (nonatomic, strong) id <CNTSettingsInteractorInputProtocol> interactor;
@property (nonatomic, strong) CNTSettingsWireframe *wireframe;

/** VIEW -> PRESENTER methods */

- (void)updateView;

- (void)requestClose;
- (void)changeDisplayNumbersAsWordsSettingValue:(BOOL)value;

@end
