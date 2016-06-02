//
//  ViewController.m
//  GifOfLogin
//
//  Created by Karma on 16/6/2.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *login;
@property (weak, nonatomic) IBOutlet UIButton *regBtn;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    //初始化UIWebView对象，添加GIF文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"5" ofType:@"gif"];
    NSData *gif =[NSData dataWithContentsOfFile:filePath];
    [self.webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    self.webView.userInteractionEnabled = NO;
    
//    //创建一个灰色的蒙版，提升效果（可选）
//    UIView *filter = [[UIView alloc] initWithFrame:self.view.bounds];
//    filter.backgroundColor = [UIColor blackColor];
//    filter.alpha = 0.5;
//    [self.view addSubview:filter];
    [self.view bringSubviewToFront:self.login];
    [self.view bringSubviewToFront:self.regBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
