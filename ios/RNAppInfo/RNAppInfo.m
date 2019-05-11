
#import "RNAppInfo.h"

@implementation RNAppInfo

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

/**
 获取app版本号
 @param callback:结果回调
 */
RCT_EXPORT_METHOD(getAppVersion:(RCTResponseSenderBlock)callback){
    
    BOOL isSucc = YES;
    NSDictionary *info = [self getMainBundle];
    NSString* appVersion = info[@"CFBundleShortVersionString"];
    //准备回调回去的数据
    callback(@[appVersion]);
}


RCT_EXPORT_METHOD(SelectImage){
    
    UIImagePickerController *pic = [[UIImagePickerController alloc] init];
    
    pic.delegate = self;
    
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [vc presentViewController:vc animated:YES completion:nil];
    
    
    
}

RCT_EXPORT_METHOD(PushController){
    
    //  UIImagePickerController *pic = [[UIImagePickerController alloc] init];
    //
    //  pic.delegate = self;
    //
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [vc presentViewController:vc animated:YES completion:nil];
    
    ViewController1 *vc2 = [[ViewController1 alloc] init];
    
    [vc presentViewController:vc2 animated:YES completion:nil];
    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    
    
    NSLog(@"%@",info);
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"选择图片成功" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionA = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *actionB = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alert addAction:actionA];
    [alert addAction:actionB];
    
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [vc presentViewController:alert animated:YES completion:nil];
    
    
}


@end
  
