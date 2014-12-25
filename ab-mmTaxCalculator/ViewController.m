//
//  ViewController.m
//  MM-Tax Calculator
//
//  Created by Aaron Bradley on 12/24/14.
//  Copyright (c) 2014 Aaron Bradley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UILabel *grandTotal;



@property double caTax;
@property double chiTax;
@property double nyTax;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}

- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *userInput = self.priceTextField.text;
    double yoNumba = userInput.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {

        double result = self.caTax * yoNumba;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
        self.grandTotal.text =  [NSString stringWithFormat:@"$%.2f", result + yoNumba];

    } else if (self.segmentedControl.selectedSegmentIndex == 1) {

        double result = self.chiTax * yoNumba;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
        self.grandTotal.text =  [NSString stringWithFormat:@"$%.2f", result + yoNumba];

    } else if (self.segmentedControl.selectedSegmentIndex == 2) {

        double result = self.nyTax * yoNumba;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
        self.grandTotal.text =  [NSString stringWithFormat:@"$%.2f", result + yoNumba];

    } else {
        NSLog(@"Something went wrong!");
    }
}



@end
