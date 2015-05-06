//
//  GradientView.m
//  Gradients
//
//  Created by Anthony Mattox on 5/6/15.
//  Copyright (c) 2015 Friends of The Web. All rights reserved.
//

#import "GradientView.h"
#import "GradientLayer.h"

@implementation GradientView

+ (Class)layerClass {
    return [GradientLayer class];
}

@end
