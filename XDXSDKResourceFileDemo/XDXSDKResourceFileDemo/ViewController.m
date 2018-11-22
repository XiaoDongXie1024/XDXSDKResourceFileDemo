//
//  ViewController.m
//  XDXSDKResourceFileDemo
//
//  Created by 小东邪 on 2018/11/6.
//  Copyright © 2018 小东邪. All rights reserved.
//

#import "ViewController.h"
#import <XDXTestFramework/XDXTestFramework.h>
#import <XDXTestFramework/TestJumpVC.h>

/*************************************************** Note   ******************************************************/
/*
 The project is used to test use multi language string , image , xib ... resources in the SDK !!!
 We need to move it to main project after build.
 
 Please read detail describe before you use it by blog.
 
 
 本Demo展示了如何在SDK中使用图片， 中英文文字，XIB文件，具体原理请见博客，喜欢的话Github给个星星。
 */

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)jumpBtnClicked:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"XDXAllResources" ofType:@"bundle"];
    TestJumpVC *vc = [[TestJumpVC alloc] initWithNibName:@"TestJumpVC" bundle:[NSBundle bundleWithPath:[path stringByAppendingString:@"/xibs"]]];

    [self presentViewController:vc animated:YES completion:nil];
}

@end
