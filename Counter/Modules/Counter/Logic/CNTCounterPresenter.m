//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "CNTCounterPresenter.h"
#import "CNTCounterWireframe.h"

@interface CNTCounterPresenter()
@property (nonatomic, strong)   NSNumberFormatter*  countFormatter;
@end


@implementation CNTCounterPresenter


#pragma mark - Presenter public methods

/**
 * Implement presenter public methods here
 */

- (void)updateView {
    //make request to the interactor for the new data here
    [self.interactor requestCountUpdate];
}

- (void)requestIncrementCount
{
    [self.interactor increment];
}


- (void)requestDecrementCount
{
    [self.interactor decrement];
}

- (void)requestResetCount {
    
    [self.interactor reset];
}


#pragma mark - Interactor Output methods

/**
 * Implement interactor output protocol methods here
 */

- (void)updateCount:(NSUInteger)count
{
    
    BOOL canDecrement = [self.interactor canDecrementCount:count];
    BOOL canReset = [self.interactor canResetCount:count];
    
    [self.view setCountText:[self formattedCount:count]];
    [self.view setDecrementEnabled:canDecrement];
    [self.view setResetEnabled:canReset];
}


#pragma mark - Private methods

/**
 * Implement this presenter private methods here
 */

- (NSNumberFormatter*)countFormatter
{
    if (_countFormatter == nil)
    {
        _countFormatter = [[NSNumberFormatter alloc] init];
        [_countFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    }
    
    return _countFormatter;
}

- (NSString*)formattedCount:(NSUInteger)count
{
    return [self.countFormatter stringFromNumber:@(count)];
}

@end