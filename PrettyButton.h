//
//  PrettyButton.h
//  StepperViewControl
//
//  Created by Colby Gatte on 10/7/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface PrettyButton : UIButton

@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isHorizontal;

@end
