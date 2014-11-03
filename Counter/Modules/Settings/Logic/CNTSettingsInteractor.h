//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNTSettingsProtocols.h"

@class CNTSettingsDataManager;

@interface CNTSettingsInteractor : NSObject <CNTSettingsInteractorInputProtocol>

@property (nonatomic, weak) id <CNTSettingsInteractorOutputProtocol> output;
@property (nonatomic, strong) CNTSettingsDataManager *dataManager;

@end