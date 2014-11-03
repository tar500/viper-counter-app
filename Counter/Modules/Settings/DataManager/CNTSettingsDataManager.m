//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsDataManager.h"

//User defauls key
static NSString * const kDisplayNumbersAsWordsKey = @"kDisplayNumbersAsWordsKey";

@interface CNTSettingsDataManager()

//anti-spam flag, helps to refresh values from database only when they are changed
@property (nonatomic, assign) BOOL valuesChanged;

@end


@implementation CNTSettingsDataManager

@synthesize shouldDisplayNumbersAsWords = _shouldDisplayNumbersAsWords;

+ (instancetype)sharedManager {
    static CNTSettingsDataManager * sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self new];
    });
    
    return sharedInstance;
}

- (id)init {
    self = [super init];
    
    if (self) {
        
        //Register defaults
        [[NSUserDefaults standardUserDefaults] registerDefaults:@{kDisplayNumbersAsWordsKey : @(YES)}];
        
        //Initialize our setting with user defaults value
        _shouldDisplayNumbersAsWords = [[NSUserDefaults standardUserDefaults] boolForKey:kDisplayNumbersAsWordsKey];
    }
    
    return self;
}

- (BOOL)shouldDisplayNumbersAsWords {
    return _shouldDisplayNumbersAsWords;
}

- (void)setShouldDisplayNumbersAsWords:(BOOL)shouldDisplayNumbersAsWords {
    
//    BOOL changed = (shouldDisplayNumbersAsWords != _shouldDisplayNumbersAsWords);
//    
//    if (changed) {
        _shouldDisplayNumbersAsWords = shouldDisplayNumbersAsWords;
        [[NSUserDefaults standardUserDefaults] setBool:_shouldDisplayNumbersAsWords forKey:kDisplayNumbersAsWordsKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
//    }
}


@end