//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTCounterWireframe.h"
#import "CNTCounterViewController.h"
#import "CNTCounterInteractor.h"
#import "CNTCounterPresenter.h"
#import "CNTCounterWireframe.h"
#import "CNTCounterDataManager.h"


@interface CNTCounterWireframe()
@property (nonatomic, strong) CNTCounterPresenter *presenter;

#warning add this
@property (nonatomic, strong) CNTCounterViewController *view;
@end

@implementation CNTCounterWireframe

- (id)init {
    self = [super init];
    if (self) {
        [self connectDependencies];
    }
    return self;
}

- (void)connectDependencies {
    
    // Generating module components
    self.view = [[CNTCounterViewController alloc] init];
    CNTCounterPresenter *presenter = [CNTCounterPresenter new];
    CNTCounterInteractor *interactor = [CNTCounterInteractor new];
    CNTCounterDataManager *dataManager = [CNTCounterDataManager new];
    
    // Connecting
    self.view.presenter = presenter;
    
    presenter.view = self.view;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    interactor.output = presenter;
    interactor.dataManager = dataManager;
    
    self.presenter = presenter;
}

- (void)presentFromWindow:(UIWindow *)window
{
    //TOODO - New view controller presentation (present, push, pop, .. )
    
    [window setRootViewController:self.view];
    
}

@end
