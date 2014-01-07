//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Michael Rizkalla on 1/6/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipSelector;

- (IBAction)setDefaultPercentage:(id)sender;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // set the default percentage
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.defaultTipSelector.selectedSegmentIndex =  [defaults integerForKey:@"defaultPercentageIndex"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setDefaultPercentage:(id)sender {
    // Save the new value in the user defaultsn
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipSelector.selectedSegmentIndex forKey:@"defaultPercentageIndex"];
    [defaults synchronize];
}
@end
