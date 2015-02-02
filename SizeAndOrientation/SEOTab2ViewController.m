//
//  SEOTab2ViewController.m
//  SizeAndOrientation
//
//  Created by 山田宏道 on 2015/02/02.
//  Copyright (c) 2015年 Torques Inc. All rights reserved.
//

#import "SEOTab2ViewController.h"

@interface SEOTab2ViewController ()

@end

@implementation SEOTab2ViewController
{
	__weak IBOutlet UITextView *textview;
	
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)buttonRefreshPressed:(id)sender {
	[self doCheck];
}

- (void) doCheck {
	
	NSMutableString*	logText	= [NSMutableString string];
	
	UIInterfaceOrientation	statusBarOrientation	= [UIApplication sharedApplication].statusBarOrientation;
	[logText appendFormat:@"[UIApplication sharedApplication].statusBarOrientation .. %d\n", (int)statusBarOrientation];
	
	CGRect	mainScreenBounds	= [UIScreen mainScreen].bounds;
	[logText appendFormat:@"[UIScreen mainScreen].bounds .. %@\n", NSStringFromCGRect(mainScreenBounds)];
	
	CGRect	selfViewFrame	= self.view.frame;
	[logText appendFormat:@"self.view.frame .. %@\n", NSStringFromCGRect(selfViewFrame)];
	
	CGRect	tabBarFrame	= self.tabBarController.tabBar.frame;
	[logText appendFormat:@"self.tabBarController.tabBar.frame .. %@\n", NSStringFromCGRect(tabBarFrame)];
	
	CGRect viewFrame = CGRectApplyAffineTransform(self.view.frame, self.view.transform);
	[logText appendFormat:@"viewFrame .. %@\n", NSStringFromCGRect(viewFrame)];

	
	textview.text	= logText;
}

@end
