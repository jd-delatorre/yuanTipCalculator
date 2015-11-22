//
//  ViewController.h
//  yuanTipGenerator
//
//  Created by John DeLaTorre on 11/22/15.
//  Copyright © 2015 John DeLaTorre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *totalInput;
@property (weak, nonatomic) IBOutlet UITextField *numberOfDiners;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedService;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

- (IBAction)calculateTip:(id)sender;

@end

