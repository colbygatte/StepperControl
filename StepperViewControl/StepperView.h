//
//  StepperView.h
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>


// Protocol for StepperViewDelegate
//
@protocol StepperViewDelegate <NSObject>
-(void) stepperViewValueDidChange:(int) number direction:(NSString *) direction;
@end


//
//
@interface StepperView : UIView
{
    UILabel *displayLabel;
}
@property (nonatomic, weak) id<StepperViewDelegate> delegate;
@end
