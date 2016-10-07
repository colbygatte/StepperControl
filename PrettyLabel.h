//
//  PrettyLabel.h
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface PrettyLabel : UILabel

@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isHorizontal;

@end
