//
//  TWHelloView.m
//  HelloSample
//
//  Created by twer on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TWHelloView.h"

@interface TWHelloView () 

- (void)clickMe:(id)sender;

@end

@implementation TWHelloView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
        label.center = CGPointMake(frame.size.width / 2, frame.size.height / 2);
        label.text = @"Hello, World!";
        label.backgroundColor = [UIColor redColor];
        label.textAlignment = UITextAlignmentCenter;
        [self addSubview:label];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y + label.frame.size.height + 20, label.frame.size.width, 30);
        button.titleLabel.text = @"Click Me";
        [button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        [button release];
    }
    return self;
}

- (void)clickMe:(id)sender {
    label.text = @"Clicked";
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc {
    [label release];
    
    [super dealloc];
}

@end
