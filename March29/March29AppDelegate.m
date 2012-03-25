//
//  March29AppDelegate.m
//  March29
//
//  Created by Noah Blake on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "March29AppDelegate.h"
#import "View.h"

@implementation March29AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	/* The aim that I fell short of here was to create an array of modify a set of objects by looping through an array. 

    UIScreen *screen = [UIScreen mainScreen];
    CGRect bounds = screen.bounds;
    self.window = [[UIWindow alloc] initWithFrame: bounds];
   
     
    NSArray *viewArray = [NSArray arrayWithObjects: v1, v2, v3, v4, v5, nil];
	
	CGFloat x = 0, y = 10, width = 50, height = 50;
    int counter = 0;
    
    while (counter < 5){
	CGRect currentRect = CGRectMake(x, y, width, height);
    x += width;
    y += height;
    
    viewArray[counter] = [[View alloc] initWithFrame: currentRect];
    self.window addSubview: viewArray[counter];
    
    NSLog(@"The count is now %d.", counter);
	}
    
	[self.window makeKeyAndVisible];
    return YES;
    }
    
    
    */
    
    
    
    //a rather crude means of getting at what I was looking for with a loop
    
    #define GROW(x) x *= 1.2
    #define SHRINK(x) x *= .9
    
    int width = 50;
    int height = 50;
    int push = width;
    
    CGRect rect1 = CGRectMake(0, 20, width, height);
    CGRect rect2 = CGRectMake(0 + push*1, 20 + push*1, GROW(width), GROW(height));
    CGRect rect3 = CGRectMake(0 + push*2, 20 + push*2, GROW(width), GROW(height));
    CGRect rect4 = CGRectMake(0 + push*3, 20 + push*3, GROW(width), GROW(height));
	CGRect rect5 = CGRectMake(0 + push*4, 20 + push*4, GROW(width), GROW(height));
    CGRect rect6 = CGRectMake(0 + push*3, 20 + push*5, GROW(width), GROW(height));
    CGRect rect7 = CGRectMake(0 + push*2, 20 + push*6, GROW(width), GROW(height));


    v1 = [[View alloc] initWithFrame: rect1];
    v2 = [[View alloc] initWithFrame: rect2];
    v3 = [[View alloc] initWithFrame: rect3];
    v4 = [[View alloc] initWithFrame: rect4];
    v5 = [[View alloc] initWithFrame: rect5];
    v6 = [[View alloc] initWithFrame: rect6];
    v7 = [[View alloc] initWithFrame: rect7];
    
    UIScreen *screen = [UIScreen mainScreen];
    CGRect bounds = screen.bounds;
    self.window = [[UIWindow alloc] initWithFrame: bounds];
    
    [self.window addSubview:v1];
    [self.window addSubview:v2];
    [self.window addSubview:v3];
    [self.window addSubview:v4];
    [self.window addSubview:v5];
    [self.window addSubview:v6];
    [self.window addSubview:v7];
    
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
