//
//  ViewController1.m
//  TestDemo
//
//  Created by zhao on 2019/5/12.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
  
  
  self.view.backgroundColor = [UIColor redColor];
  
  UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
  [btn setTitle:@"返回" forState:UIControlStateNormal];
  [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [btn setBackgroundColor:[UIColor cyanColor]];
  btn.frame = CGRectMake(0, 0, 100, 100);
  btn.center = self.view.center;
  
  [self.view addSubview:btn];
  
  [btn addTarget:self action:@selector(DissVC) forControlEvents:UIControlStateNormal];
  
  
    // Do any additional setup after loading the view.
}

- (void)DissVC{

  [self dismissViewControllerAnimated:YES completion:nil];

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
