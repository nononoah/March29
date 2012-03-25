//
//  March29AppDelegate.h
//  March29
//
//  Created by Noah Blake on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface March29AppDelegate : UIResponder <UIApplicationDelegate> {
   
    //really wanted this to be an array of objects, but I ran into trouble with this idea, as mentioned in AppDelegate.m
    View *v1; 
    View *v2;
    View *v3;
    View *v4;
    View *v5;
    View *v6;
    View *v7;
    View *v8;
    View *v9;
    View *v10;
    UIWindow *_window;
}
	
@property (strong, nonatomic) UIWindow *window;

@end
