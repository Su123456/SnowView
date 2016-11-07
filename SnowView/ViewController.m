//
//  ViewController.m
//  SnowView
//
//  Created by honyork on 2016/11/7.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import "ViewController.h"
#import "Snow.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(-100, 0, 600, 568)];
    imageView.clipsToBounds = true;
    imageView.image         = [UIImage imageNamed:@"bg"];
    [self.view addSubview:imageView];

    [self snow];
    
}

- (void)snow{
    UIView   *snowView = [[UIView alloc]initWithFrame:CGRectMake(-150, -100, 320, 50)];
    snowView.clipsToBounds = true;
    [self.view addSubview:snowView];

    [[Snow new] creatSnow:self.view.layer SuperView:snowView];
}
@end
