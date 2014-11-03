//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNTCounterProtocols.h"

@class CNTCounterDataManager;

@interface CNTCounterInteractor : NSObject <CNTCounterInteractorInputProtocol>

@property (nonatomic, weak) id <CNTCounterInteractorOutputProtocol> output;
@property (nonatomic, strong) CNTCounterDataManager *dataManager;

@end