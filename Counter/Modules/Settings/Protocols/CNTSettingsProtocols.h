//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/** PRESENTER -> VIEW */
@protocol CNTSettingsViewProtocol

- (void)setDisplayNumbersAsWordsEnabled:(BOOL)enabled;

@end


/** INTERACTOR -> PRESENTER */
@protocol CNTSettingsInteractorOutputProtocol

- (void)updateDisplayNumbersAsWordsSettingValue:(BOOL)value;

@end


/** PRESENTER -> INTERACTOR */
@protocol CNTSettingsInteractorInputProtocol

- (void)requestSettingsUpdate;
- (void)setDisplayNumbersAsWordsSettingValue:(BOOL)value;

@end


