//
//  ViewController.m
//  scrollerImage
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 shenzhenjiaoq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
{
    UIScrollView *_scroller;
    UIImageView *Image;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _scroller = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _scroller.delegate = self;
    _scroller.contentSize = CGSizeMake(0, [UIScreen mainScreen].bounds.size.height);
    _scroller.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_scroller];
    
    Image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.6)];
    Image.image = [UIImage imageNamed:@"main.jpg"];
    [_scroller addSubview:Image];
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"==%f",scrollView.contentOffset.y);
    Image.frame = CGRectMake(0, scrollView.contentOffset.y, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.6-scrollView.contentOffset.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
