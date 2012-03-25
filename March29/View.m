//
//  View.m
//  March29
//
//  Created by Noah Blake on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       self.backgroundColor = [UIColor blueColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 40.0];
//really want to use UILabel here to change the font color, but I'm not literate enough as of yet to figure out the ios library's direction
    NSString *string = @"Yo";
    CGPoint point = CGPointMake(0.0, 0.0);
    [string drawAtPoint: point withFont: font];
}


@end
