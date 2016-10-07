//
//  StepperView.h
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PrettyLabel.h"
#import "PrettyButton.h"
#import <QuartzCore/QuartzCore.h>

// Protocol for StepperViewDelegate
//
@protocol StepperViewDelegate <NSObject>
-(void) stepperViewValueDidChange:(int) number direction:(NSString *) direction;
@end


//
//
@interface StepperView : UIView
{
    PrettyLabel *displayLabel;
}
@property (nonatomic, weak) id<StepperViewDelegate> delegate;
@property (nonatomic, assign) int numberMax;
@property (nonatomic, assign) int numberMin;
@property (nonatomic, strong) NSString *plusSignText;
@property (nonatomic, strong) NSString *minusSignText;

@end
