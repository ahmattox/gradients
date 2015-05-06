//
//  GradientLayer.m
//  Gradients
//
//  Created by Anthony Mattox on 5/6/15.
//  Copyright (c) 2015 Friends of The Web. All rights reserved.
//

#import "GradientLayer.h"
@import UIKit;

@interface GradientLayer ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end


@implementation GradientLayer

- (instancetype)init {
    if (self = [super init]) {
        self.gradientLayer = [CAGradientLayer new];
        [self addSublayer:self.gradientLayer];
        self.gradientLayer.colors = @[ (id)[UIColor redColor].CGColor,  (id)[UIColor orangeColor].CGColor, (id)[UIColor greenColor].CGColor, (id)[UIColor blueColor].CGColor];;
        self.gradientLayer.locations = @[ @0, @.333, @.666, @1 ];
    }
    return self;
}

- (void)layoutSublayers {
    [super layoutSublayers];
    self.gradientLayer.frame = self.bounds;
    self.gradientLayer.startPoint = CGPointMake(0, 0);
    self.gradientLayer.endPoint = CGPointMake(100 / self.bounds.size.width, 40 / self.bounds.size.height);
}

@end
