//
//  PrettyLabel.m
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "PrettyLabel.h"

@interface PrettyLabel ()

@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *midColor;
@property (nonatomic) IBInspectable UIColor *endColor;

@end

@implementation PrettyLabel


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        // The colors are for the gradient
        self.startColor     = [UIColor redColor];
        self.midColor       = [UIColor greenColor];
        self.endColor       = [UIColor blueColor];
        self.borderWidth    = 1;
        self.cornerRadious  = 10;
        self.isHorizontal   = NO;
        
        [self customInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customInit];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect: rect];
    [self customInit];
}

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [self setNeedsDisplay];
}


- (void)prepareForInterfaceBuilder {
    
    [self customInit];
}

- (void)customInit {
    
    
    self.layer.cornerRadius = self.cornerRadious;
    self.layer.borderWidth = self.borderWidth;
    
    if (self.cornerRadious > 0) {
        self.layer.masksToBounds = YES;
    }
    
    
    /*CAGradientLayer *gradient = [CAGradientLayer layer];
     gradient.frame = self.bounds;
     
     gradient.colors = [NSArray arrayWithObjects:(id)[self.startColor CGColor],(id)[self.midColor CGColor], (id)[self.endColor CGColor], nil];
     gradient.endPoint = (self.isHorizontal) ? CGPointMake(1, 0) : CGPointMake(0, 1);
     [self.layer insertSublayer:gradient atIndex:0];*/
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
