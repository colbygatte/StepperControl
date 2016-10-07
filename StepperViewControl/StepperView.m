//
//  StepperView.m
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "StepperView.h"
#import "PrettyLabel.h"
#import "PrettyButton.h"

@implementation StepperView

-(id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    //
    // Plus button
    PrettyButton *plusButton = [PrettyButton buttonWithType:UIButtonTypeCustom];
    [plusButton setTitle:@"+" forState:UIControlStateNormal];
    [plusButton addTarget:self action:@selector(plusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    plusButton.frame = CGRectMake(0, 0, 35, 35);
    [plusButton setCenter:CGPointMake(self.frame.size.width - 50, self.frame.size.height/2)];
    [plusButton.titleLabel setFont:[UIFont systemFontOfSize:50]];
    plusButton.backgroundColor = [UIColor colorWithRed:140.0f/255.0f green:186.0f/255.0f blue:210.0f/255.0f alpha:1.0f];
    plusButton.borderWidth = 0;
    
    
    
    //
    // Minus button
    PrettyButton *minusButton = [PrettyButton buttonWithType:UIButtonTypeCustom];
    [minusButton setTitle:@"-" forState:UIControlStateNormal];
    [minusButton addTarget:self action:@selector(minusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    minusButton.frame = CGRectMake(0, 0, 35, 35);
    [minusButton setCenter:CGPointMake(50, self.frame.size.height/2)];
    [minusButton.titleLabel setFont:[UIFont systemFontOfSize:50]];
    minusButton.backgroundColor = [UIColor colorWithRed:140.0f/255.0f green:186.0f/255.0f blue:210.0f/255.0f alpha:1.0f];
    minusButton.borderWidth = 0;
    
    
    //
    // Display label
    //
    // declared as private variable so the number can be changed
    (displayLabel = [[PrettyLabel alloc] init]).text = @"0";
    displayLabel.frame = CGRectMake(25, 25, 40, 35);
    [displayLabel setCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)];
    displayLabel.textAlignment = NSTextAlignmentCenter;
    displayLabel.borderWidth = 0;
    displayLabel.backgroundColor =[UIColor colorWithRed:140.0f/255.0f green:186.0f/255.0f blue:210.0f/255.0f alpha:1.0f];
    
    

    
    // Add math buttons and label to view
    [self addSubview:plusButton];
    [self addSubview:minusButton];
    [self addSubview:displayLabel];
    
    return self;
}

-(void) setPlusSignText:(NSString *)plusSignText {
    
}

-(void) plusButtonPressed:(UIButton *) button {
    int number = displayLabel.text.intValue;
    if(self.numberMax > number) {
        number++;
        displayLabel.text = [NSString stringWithFormat:@"%i", number];
    
        [self.delegate stepperViewValueDidChange:number direction:@"Up"];
    } 
}


-(void) minusButtonPressed:(UIButton *) button {
    int number = displayLabel.text.intValue;
    
    if(self.numberMin < number) {
        number--;
        displayLabel.text = [NSString stringWithFormat:@"%i", number];
    
        [self.delegate stepperViewValueDidChange:number direction:@"Down"];
    }
}



/*
 -
 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
