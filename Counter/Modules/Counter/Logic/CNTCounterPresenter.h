//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNTCounterProtocols.h"

@class CNTCounterWireframe;

@interface CNTCounterPresenter : NSObject <CNTCounterInteractorOutputProtocol>

@property (nonatomic, weak) id <CNTCounterViewProtocol> view;
@property (nonatomic, strong) id <CNTCounterInteractorInputProtocol> interactor;
@property (nonatomic, strong) CNTCounterWireframe *wireframe;

/** VIEW -> PRESENTER methods */

- (void)updateView;

- (void)requestIncrementCount;
- (void)requestDecrementCount;
- (void)requestResetCount;

- (void)requestShowSettings;

@end
