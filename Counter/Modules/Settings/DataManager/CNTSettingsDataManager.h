//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CNTSettingsDataManager : NSObject

+ (instancetype)sharedManager;

@property (nonatomic, assign) BOOL shouldDisplayNumbersAsWords;

@end