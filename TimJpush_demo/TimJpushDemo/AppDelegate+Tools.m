//
//  AppDelegate+Tools.m
//  taoqianbao
//
//  Created by tim on 16/10/26.
//  Copyright © 2016年 tim. All rights reserved.
//

#import "AppDelegate+Tools.h"


#import "TimJpush.h"


@implementation AppDelegate(Tools)

+(void)load
{
    [super load];
    
    
    {
        ///设置极光的 push 方案
        [TimJpushConfigManager sharedInstance].enableJpush = YES;
        
        [TimJpushConfigManager sharedInstance].pushAppKey = @"074760201b4c2b2d06d52bae";
        
        [TimJpushConfigManager sharedInstance].apsForProduction = YES;
        
        
        
    }
    
}

///收到的推送数据的处理方法,也可以自己拓展为自己用的 推送 sdk,
-(void)dealRemotePushDict:(NSDictionary *)userInfo  applicationState:(UIApplicationState)state
{
    
    NSLog(@"收到 推送的信息:%@",userInfo);
    NSDictionary *alert = [[userInfo objectForKey:@"aps"] objectForKey:@"alert"];
    NSString *title  ,  *body;
    
    ///IOS10
    if([alert isKindOfClass:[NSDictionary class]] ){
         title = [alert objectForKey:@"title"];
         body = [alert objectForKey:@"body"];
        
    }else if([alert isKindOfClass:[NSString class]]){
        ///系统目前使用这个数据
        title = @"";
        body = (NSString *)alert;
        
    }
    
    
    NSDictionary *action = [userInfo objectForKey:@"action"];
    if ([action isKindOfClass:[NSDictionary class]]) {
        NSString *action_key = [action objectForKey:@"key"];
        NSString *action_value = [action objectForKey:@"value"];
        
        ///打开网页
        if ([action_key isEqualToString:@"openurl"]) {
            
            
            NSString *url = action_value;
            
            
            if( url ){
                
                [self openUrl:url];
                
                [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
                
                
            }
        }else{
        ////....
            
        }
        
        
        
    }
    
    
}
-(void)openUrl:(NSString *)url1{
    NSURL *url = [NSURL URLWithString:url1];
    if(
       [[UIApplication sharedApplication]canOpenURL:url]
       )
    {
        [[UIApplication sharedApplication]openURL:url];
        
    }
    
}



@end
