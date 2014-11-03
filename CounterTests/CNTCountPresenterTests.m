//
//  Counter - CACountPresenterTests.m
//  Copyright 2013 Mutual Mobile. All rights reserved.
//
//  Created by: Jeff Gilbert
//

// Class under test
#import "CNTCounterPresenter.h"

// Collaborators
#import "CNTCounterProtocols.h"
#import "CNTCounterInteractor.h"

// Test support
#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito.h"


@interface CNTCountPresenterTests : XCTestCase
@property (nonatomic, strong)   CNTCounterPresenter*          presenter;
@property (nonatomic, strong)   id<CNTCounterViewProtocol>            view;
@property (nonatomic, strong)   CNTCounterInteractor *interactor;
@end


@implementation CNTCountPresenterTests

- (void)setUp
{
    [super setUp];
    
    self.presenter = [[CNTCounterPresenter alloc] init];
    
    self.view = mockProtocol(@protocol(CNTCounterViewProtocol));
    self.presenter.view = self.view;
    
    self.interactor = mock([CNTCounterInteractor class]);
    self.presenter.interactor = self.interactor;
}


- (void)testUpdateViewRequestsInteractorCount
{
    [self.presenter updateView];
    
    [verify(self.interactor) requestCountUpdate];
}


- (void)testIncrementRequestsInteractorIncrement
{
	[self.presenter requestIncrementCount];
    
    [verify(self.interactor) increment];
}


- (void)testDecrementRequestsInteractorDecrement
{
	[self.presenter requestDecrementCount];
    
    [verify(self.interactor) decrement];
}


- (void)testReceivingZeroDisplaysZero
{
    [self.presenter updateCount:0];
    
    [verify(self.view) setCountText:@"zero"];
}


- (void)testReceivingOneDisplaysOne
{
    [self.presenter updateCount:1];
    
    [verify(self.view) setCountText:@"one"];
}


//- (void)testReceivingZeroDisablesDecrement
//{
//    [given([self.interactor canDecrementCount:1]) willReturnBool:NO];
//    
//    [self.presenter updateCount:0];
//    
//    [verify(self.view) setDecrementEnabled:NO];
//}
//
//
//- (void)testReceivingOneEnablesDecrement
//{
//    
//    [given([self.interactor canDecrementCount:1]) willReturnBool:YES];
//    
//    NSLog(@"%d", [self.interactor canDecrementCount:1]);
//    
//    [self.presenter updateCount:1];
//    
//    [verify(self.view) setDecrementEnabled:YES];
//}

@end
