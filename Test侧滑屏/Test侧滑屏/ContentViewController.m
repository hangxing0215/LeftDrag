//
//  ContentViewController.m
//  Test侧滑屏
//
//  Created by tarena on 15/12/26.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "ContentViewController.h"
#import "SWRevealViewController.h"
@interface ContentViewController ()
{
    SWRevealViewController *revalVC;
}

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    revalVC = [self revealViewController];
    [revalVC panGestureRecognizer];
    [revalVC tapGestureRecognizer];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    revalVC.toggleAnimationType = SWRevealToggleAnimationTypeSpring;
    revalVC.springDampingRatio = 3;
   
}
- (void)clickButton:(UIButton *)sender
{
    //[revalVC rightRevealToggle:sender];
    [revalVC revealToggle:sender];
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

@end
