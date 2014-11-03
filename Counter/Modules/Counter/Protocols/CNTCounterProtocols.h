//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/** PRESENTER -> VIEW */
@protocol CNTCounterViewProtocol

- (void)setCountText:(NSString*)countText;
- (void)setDecrementEnabled:(BOOL)enabled;
- (void)setResetEnabled:(BOOL)enabled;

@end


/** INTERACTOR -> PRESENTER */
@protocol CNTCounterInteractorOutputProtocol

- (void)updateCount:(NSUInteger)count;

@end


/** PRESENTER -> INTERACTOR */
@protocol CNTCounterInteractorInputProtocol

- (void)requestCountUpdate;

- (void)increment;
- (void)decrement;
- (void)reset;

- (void)setCountValue:(NSInteger)count;

- (BOOL)canDecrementCount:(NSInteger)count;
- (BOOL)canResetCount:(NSInteger)count;

@end


