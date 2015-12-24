//
//  ViewController.m
//  AutolayoutUIScrollView
//
//  Created by Chen Tom on 12/24/15.
//  Copyright © 2015 Chen Zheng. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@property(nonatomic, weak)IBOutlet UIView *viewContainer1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI1];
    [self setupUI2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI1
{
    UIView *container = [UIView new];
    container.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:container];
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(20);
        make.right.equalTo(self.view.mas_right).offset(-20);
        make.top.equalTo(self.view.mas_top).offset(300);
        make.height.mas_equalTo(140);
    }];
    
    UIScrollView *scrollView = [UIScrollView new];
    [container addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(container);
        make.width.equalTo(container);
    }];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.clipsToBounds = NO;
    scrollView.bounces = NO;
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor blueColor];
    v1.alpha = 0.5;
    
    [scrollView addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.top.and.bottom.equalTo(scrollView);
        make.width.mas_equalTo(scrollView.mas_width);
        make.height.mas_equalTo(scrollView.mas_height);
    }];
    
    UIView *v2 = [UIView new];
    v2.backgroundColor = [UIColor redColor];
    v2.alpha = 0.5;
    
    [scrollView addSubview:v2];
    
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(v1.mas_right);
        make.top.and.right.bottom.equalTo(scrollView);
        make.width.mas_equalTo(scrollView.mas_width);
        make.height.mas_equalTo(scrollView.mas_height);
    }];
}

- (void)setupUI2
{
    UIScrollView *scrollView = [UIScrollView new];
    [_viewContainer1 addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(_viewContainer1);
        make.width.equalTo(_viewContainer1);
    }];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.clipsToBounds = NO;
    scrollView.bounces = NO;
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor blueColor];
    v1.alpha = 0.5;
    
    [scrollView addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.top.and.bottom.equalTo(scrollView);
        make.width.mas_equalTo(scrollView.mas_width);
        make.height.mas_equalTo(scrollView.mas_height);
    }];
    
    UIView *v2 = [UIView new];
    v2.backgroundColor = [UIColor redColor];
    v2.alpha = 0.5;
    
    [scrollView addSubview:v2];
    
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(v1.mas_right);
        make.top.and.right.bottom.equalTo(scrollView);
        make.width.mas_equalTo(scrollView.mas_width);
        make.height.mas_equalTo(scrollView.mas_height);
    }];
}

@end
