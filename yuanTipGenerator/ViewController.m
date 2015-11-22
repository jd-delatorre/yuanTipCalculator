//
//  ViewController.m
//  yuanTipGenerator
//
//  Created by John DeLaTorre on 11/22/15.
//  Copyright © 2015 John DeLaTorre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize segmentedService;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    //total bill textfield
    NSString *totalString = self.totalInput.text;
    double totalValue = [totalString doubleValue];
    
    //total individuals textfield
    NSString *dinersString = self.numberOfDiners.text;
    double dinerValue = [dinersString doubleValue];
    
    double percent = 0.0;
    
    if (segmentedService.selectedSegmentIndex == 0) {
        percent = 0.10;
    }else if (segmentedService.selectedSegmentIndex == 1){
        percent = 0.15;
    }else{
        percent = 0.20;
    }
    
    double tipAll = ((totalValue * percent) + totalValue) / dinerValue;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$ %.2f Each", tipAll];
}


@end
