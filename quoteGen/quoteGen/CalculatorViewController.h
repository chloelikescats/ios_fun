//
//  CalculatorViewController.h
//  quoteGen
//
//  Created by Kisha M Richardson on 8/15/13.
//  Copyright (c) 2013 Kisha M Richardson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController
@property (nonatomic, retain) NSArray *myQuotes;
@property (nonatomic, retain) NSMutableArray *movieQuotes;

@property (nonatomic, retain) IBOutlet UITextView * quote_text;
-(IBAction)quote_btn_touch:(id)sender;
@end
