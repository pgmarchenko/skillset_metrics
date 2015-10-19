//
//  MainView.m
//  HardcodedUI
//
//  Created by Pavel Marchenko on 10/19/15.
//  Copyright © 2015 Pavel Marchenko. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (instancetype) init {
    return [self initWithFrame:[[UIScreen mainScreen] bounds]];
}

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setBackgroundColor:[UIColor brownColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button setFrame:CGRectMake(50, 50, 200, 100)];
    [button setBackgroundColor:[UIColor yellowColor]];
    [button setTitle:@"Push Controller" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
    
    _pushButton = button;
    
    UIButton *modalButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [modalButton setFrame:CGRectMake(50, 150, 200, 100)];
    [modalButton setBackgroundColor:[UIColor greenColor]];
    [modalButton setTitle:@"Show modal Controller" forState:UIControlStateNormal];
    [modalButton setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];

    _modalButton = modalButton;
    
    [self addSubview:_pushButton];
    [self addSubview:_modalButton];
     
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
