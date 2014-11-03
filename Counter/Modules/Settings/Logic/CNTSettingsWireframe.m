//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTSettingsWireframe.h"
#import "CNTSettingsViewController.h"
#import "CNTSettingsInteractor.h"
#import "CNTSettingsPresenter.h"
#import "CNTSettingsWireframe.h"
#import "CNTSettingsDataManager.h"


@interface CNTSettingsWireframe()
@property (nonatomic, strong) CNTSettingsPresenter *presenter;
@property (nonatomic, strong) CNTSettingsViewController *view;
@end

@implementation CNTSettingsWireframe

- (id)init {
    self = [super init];
    if (self) {
        [self connectDependencies];
    }
    return self;
}

- (void)connectDependencies {
    
    // Generating module components
    self.view = [[CNTSettingsViewController alloc] init];
    CNTSettingsPresenter *presenter = [CNTSettingsPresenter new];
    CNTSettingsInteractor *interactor = [CNTSettingsInteractor new];
    CNTSettingsDataManager *dataManager = [CNTSettingsDataManager new];
    
    // Connecting
    self.view.presenter = presenter;
    
    presenter.view = self.view;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    interactor.output = presenter;
    interactor.dataManager = dataManager;
    
    self.presenter = presenter;
}

- (void)presentFromNavigationController:(UINavigationController *)navController
{
    //TOODO - New view controller presentation (present, push, pop, .. )
    [navController pushViewController:self.view animated:YES];
    
}

@end
