//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsInteractor.h"
#import "CNTSettingsDataManager.h"

@interface CNTSettingsInteractor()

@end

@implementation CNTSettingsInteractor


#pragma mark - Interactor Input methods

/**
 * Implement interactor input protocol methods here
 * Make calls to output when needed
 */

- (void)setDisplayNumbersAsWordsSettingValue:(BOOL)value {
    [self.dataManager setShouldDisplayNumbersAsWords:value];
}

- (void)requestSettingsUpdate {
    [self.output updateDisplayNumbersAsWordsSettingValue:self.dataManager.shouldDisplayNumbersAsWords];
}

#pragma mark - Private methods

/**
 * Implement this interactor private methods here
 */

- (void)dealloc {
    NSLog(@"Interactor dealloc");
}

@end