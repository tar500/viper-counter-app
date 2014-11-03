//
//  Counter - CACountInteractorTests.m
//  Copyright 2013 Mutual Mobile. All rights reserved.
//
//  Created by: Jeff Gilbert
//

// Class under test
#import "CNTCounterInteractor.h"
#import "CNTCounterProtocols.h"

// Test support
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import "OCHamcrest.h"


#define assertCountEquals(expected) assertThatUnsignedInteger(self.count, equalToUnsignedInteger(expected))


@interface CNTCountInteractorTests : XCTestCase <CNTCounterInteractorOutputProtocol>
@property (nonatomic, strong)   id<CNTCounterInteractorInputProtocol> interactor;
@property (nonatomic, assign)   NSUInteger                  count;
@end


@implementation CNTCountInteractorTests

- (void)setUp
{
    [super setUp];
    
    CNTCounterInteractor* interactor = [[CNTCounterInteractor alloc] init];
    interactor.output = self;
    self.interactor = interactor;
}


- (void)testInitialCountIsZero
{
    self.count = 1;
    
    [self.interactor requestCountUpdate];
    
    assertCountEquals(0);
}


- (void)testOneIncrementReturnsOne
{
    [self.interactor increment];
    
    assertCountEquals(1);
}


- (void)testTwoIncrementsReturnsTwo
{
    [self.interactor increment];
    [self.interactor increment];
    
    assertCountEquals(2);
}


- (void)testDecrementFromZeroReturnsZero
{
	[self.interactor decrement];
    
	assertCountEquals(0);
}


- (void)testOneDecrementFromOneReturnsZero
{
	[self.interactor increment];
    
	[self.interactor decrement];
    
	assertCountEquals(0);
}


- (void)testOneDecrementFromTwoReturnsOne
{
	[self.interactor increment];
    [self.interactor increment];
    
	[self.interactor decrement];
    
	assertCountEquals(1);
}


#pragma mark - Interactor Output

- (void)updateCount:(NSUInteger)count
{
    self.count = count;
}

@end
