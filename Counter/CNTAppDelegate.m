//
//  CNTAppDelegate.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CNTAppDelegate.h"
#import "CNTCounterWireframe.h"


@implementation CNTAppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self createScreen];

    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)createScreen
{
    CNTCounterWireframe * wireframe = [CNTCounterWireframe new];
    [wireframe presentFromWindow:self.window];

}

@end
