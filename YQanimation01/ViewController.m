//
//  ViewController.m
//  YQanimation01
//
//  Created by Yiqiao on 16/2/15.
//  Copyright © 2016年 Yiqiao. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self positionInit];
    
    [self animationForTextFieldAndLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)positionInit{
    
    [_userName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view.center.x);
    }];
}

- (void)animationForTextFieldAndLabel{
    //start from
    
    CGPoint nameCenter = _userName.center;
    CGPoint passwordCenter = _userPassword.center;
    nameCenter.x -= 200;
    passwordCenter.x -= 200;
    _userName.center = nameCenter;
    _userPassword.center = passwordCenter;
    _loginLabel.alpha = 0;
    
    //final location
    
    nameCenter.x += 200;
    passwordCenter.x += 200;
    [UIView animateWithDuration:1.0 animations:^{
        _userName.center = nameCenter;
        [UIView animateWithDuration:1.0 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _userPassword.center = passwordCenter;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.0 animations:^{
                _loginLabel.alpha = 1;
            }];
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
