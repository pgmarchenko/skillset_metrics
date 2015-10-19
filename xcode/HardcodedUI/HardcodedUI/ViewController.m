//
//  ViewController.m
//  HardcodedUI
//
//  Created by Pavel Marchenko on 10/19/15.
//  Copyright © 2015 Pavel Marchenko. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    MainView *view = [MainView new];
    
    [[view pushButton] addTarget:self action:@selector(pushButton_onTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [[view modalButton] addTarget:self action:@selector(modalButton_onTouchUpInside:) forControlEvents:UIControlEventTouchDown];
    
    [self setView:view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.navigationItem.title = @"Main";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushButton_onTouchUpInside:(UIButton*)sender {
    [self.navigationController pushViewController:[[ViewController alloc] init] animated:YES];
}

- (void)modalButton_onTouchUpInside:(UIButton*)sender {
    static UIModalTransitionStyle ts = UIModalTransitionStyleCoverVertical;
    
    ViewController *vc = [[ViewController alloc] init];
    [vc setModalTransitionStyle:ts];

    [self presentViewController:vc animated:YES completion:^{
        [self dismissViewControllerAnimated:YES completion:^{
            ++ts;
            ts %= UIModalTransitionStylePartialCurl + 1;
        }];
    }];
}


@end
