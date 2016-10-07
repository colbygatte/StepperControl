//
//  ViewController.m
//  StepperViewControl
//
//  Created by Colby Gatte on 10/6/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//
//[UIColor colorWithRed:66.0f/255.0f
//                green:79.0f/255.0f
//                 blue:91.0f/255.0f
//                alpha:1.0f];


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:130.0f/255.0f green:140.0f/255.0f blue:200.0f/255.0f alpha:1.0f];
    self.label.backgroundColor = [UIColor colorWithRed:100.0f/255.0f green:120.0f/255.0f blue:180.0f/255.0f alpha:1.0f];
    
    // Make StepperView frame
    CGRect frame = CGRectMake(0, 0, 350, 75);
    StepperView *stepperView = [[StepperView alloc] initWithFrame:frame];
    stepperView.delegate = self;
    
    // Center
    CGPoint center = self.view.center;
    center.y = 230;
    [stepperView setCenter:center];
    
    stepperView.backgroundColor = [UIColor colorWithRed:153.0f/255.0f green:195.0f/255.0f blue:216.0f/255.0f alpha:1.0f];
    
    [self.view addSubview:stepperView];
    

    
    
}


-(void) stepperViewValueDidChange:(int)number direction:(NSString *)direction {
    self.label.text = [NSString stringWithFormat:@"%i", number];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
