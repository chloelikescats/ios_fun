//
//  CalculatorViewController.m
//  quoteGen
//
//  Created by Kisha M Richardson on 8/15/13.
//  Copyright (c) 2013 Kisha M Richardson. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController
@synthesize myQuotes;
@synthesize movieQuotes;
@synthesize quote_text;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myQuotes = [NSArray arrayWithObjects:
                   @"Geek girls rock",
                   @"One man's ceiling is another man's floor",
                   @"Success is not permanent, failure is not fatal",
                   @"You don't miss your water til your well runs dry",
                   @"I love coding",
                   nil];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)quote_btn_touch:(id)sender {
	// 1 - Get number of rows in array
    int array_tot = [self.myQuotes count];
	// 2 - Get random index
	int index = (arc4random() % array_tot);
	// 3 - Get the quote string for the index
	NSString *my_quote = [self.myQuotes objectAtIndex:index];
	// 4 - Display the quote in the text view
	self.quote_text.text = [NSString stringWithFormat:@"Quote:\n\n%@",  my_quote];
}
@end
