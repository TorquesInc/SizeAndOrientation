//
//  SAOTab1ViewController.m
//  SizeAndOrientation
//
//  Created by 山田宏道 on 2015/02/02.
//  Copyright (c) 2015年 Torques Inc. All rights reserved.
//

#import "SAOTab1ViewController.h"

@interface SAOTab1ViewController ()

@end

@implementation SAOTab1ViewController

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

- (IBAction)buttonCloseTabPressed:(id)sender {
//	UIViewController*	rootVC	= self.tabBarController.parentViewController;
	[self.tabBarController dismissViewControllerAnimated:YES completion:nil];
}

@end
