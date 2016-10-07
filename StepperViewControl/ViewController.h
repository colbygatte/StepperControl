//
//  ViewController.h
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StepperView.h"
#import "PrettyLabel.h"


@interface ViewController : UIViewController <StepperViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *label;


@end

