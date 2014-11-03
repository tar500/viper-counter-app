//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsPresenter.h"
#import "CNTSettingsWireframe.h"

@interface CNTSettingsPresenter()

@end


@implementation CNTSettingsPresenter


#pragma mark - Presenter public methods

/**
 * Implement presenter public methods here
 */


- (void)updateView {
    //make request to the interactor for the new data here
    [self.interactor requestSettingsUpdate];
}

- (void)requestClose {
    [self.wireframe dismiss];
}

- (void)changeDisplayNumbersAsWordsSettingValue:(BOOL)value {
    [self.interactor setDisplayNumbersAsWordsSettingValue:value];
}




#pragma mark - Interactor Output methods

/**
 * Implement interactor output protocol methods here
 */

- (void)updateDisplayNumbersAsWordsSettingValue:(BOOL)value {
    [self.view setDisplayNumbersAsWordsEnabled:value];
}


#pragma mark - Private methods

/**
 * Implement this presenter private methods here
 */

@end