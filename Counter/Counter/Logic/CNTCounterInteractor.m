//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTCounterInteractor.h"
#import "CNTCounterDataManager.h"

#warning Add this
@interface CNTCounterInteractor()
@property (nonatomic, assign)   NSUInteger  count;
@end

@implementation CNTCounterInteractor


#pragma mark - Interactor Input methods

/**
 * Implement interactor input protocol methods here
 * Make calls to output when needed
 */

- (void)requestCountUpdate
{
    [self sendCount];
}


- (void)increment
{
    ++self.count;
    [self sendCount];
}


- (void)decrement
{
    if ([self canDecrementCount:self.count])
    {
        --self.count;
        [self sendCount];
    }
}

- (void)reset
{
    if ([self canResetCount:self.count]) {
        self.count = 0;
        [self sendCount];
    }
}


- (BOOL)canDecrementCount:(NSInteger)count
{
    return (count > 0);
}

- (BOOL)canResetCount:(NSInteger)count
{
    return (count > 0);
}

- (void)setCountValue:(NSInteger)countValue {
    
    if (countValue > 0) {
        self.count = countValue;
        [self sendCount];
    }
    
}


#pragma mark - Private methods

/**
 * Implement this interactor private methods here
 */

- (void)sendCount
{
    [self.output updateCount:self.count];
}

@end