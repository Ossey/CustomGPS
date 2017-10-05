//
//  ChangePhotoGPSController.m
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import "ChangePhotoGPSController.h"
#import "UIToast.h"
#import "UploadImageView.h"

@interface ChangePhotoGPSController ()
@property (weak, nonatomic) IBOutlet UITextField *longitudeTf;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTf;

@end

@implementation ChangePhotoGPSController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changePhotoGpsAction:(id)sender {
    if (self.longitudeTf.text.length<=0||self.latitudeTf.text.length<=0) {
        [UIToast showMessage:@"请输入经纬度"];
        return;
    }
    
    //浮点数值使用CGFloat,NSDecimalNumber对象进行处理:
    NSDecimalNumber *longitude = [[NSDecimalNumber alloc] initWithString:self.longitudeTf.text];
    NSDecimalNumber *latitude = [[NSDecimalNumber alloc] initWithString:self.latitudeTf.text];
    
    [UploadImageView showUpUploadImageViewWithBlockImage:^(UIImage *newImage) {
        
    } longitude:[longitude doubleValue ] latitude:[latitude doubleValue ]];

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
