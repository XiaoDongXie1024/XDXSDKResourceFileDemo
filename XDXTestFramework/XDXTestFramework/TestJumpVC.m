//
//  TestJumpVC.m
//  XDXTestFramework
//
//  Created by 小东邪 on 2018/11/6.
//  Copyright © 2018 小东邪. All rights reserved.
//

#import "TestJumpVC.h"
#import "NSBundle+XDXLocalizable.h"

/*************************************************** Note   ******************************************************/
/*
    The project is used to test use multi language string , image , xib ... resources in the SDK !!!
    We need to move it to main project after build.
 
    Please read detail describe before you use it by blog.
 */

@interface TestJumpVC ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIImageView *testImage;

@end

@implementation TestJumpVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Test multi language， The file is Localizable.strings.
    self.testLabel.text = [NSBundle XDX_localizedStringForKey:@"Test"];
    
    
    // Test image
    NSString *path = [[[NSBundle mainBundle] pathForResource:@"XDXAllResources" ofType:@"bundle"] stringByAppendingString:@"/images/1.png"];
    self.testImage.image = [UIImage imageWithContentsOfFile:path];
}


@end
