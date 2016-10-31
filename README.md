<h1>YMCitySelect</h1>
<ul>
<li>简化推送的代码逻辑,这个使用的 jpush 作为拓展,只需要设置3方 sdk 的 key 和 一个 收到推送的 block 即可</li>

typedef  NSArray<YMCityGroupsModel *>*(^GetDataSourceBlock)(void) ;
///获取城市数据
@property (copy,nonatomic) GetDataSourceBlock getGroupBlock;

+(void)load
{
[super load];


{
///设置极光的 push 方案
[TimJpushConfigManager sharedInstance].enableJpush = YES;

[TimJpushConfigManager sharedInstance].pushAppKey = @"XXXX";

[TimJpushConfigManager sharedInstance].apsForProduction = YES;


}

}

 

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// Override point for customization after application launch.

__weak AppDelegate *weak_self =self;
///WEAK_self
self.pushBlock = ^(NSDictionary *userInfo, UIApplicationState state){
///do it by yourself
//STRONG_SELF

};


return YES;
}


<h4>亲爱的各位同行，如果你已经浏览到这，请帮我点下右上角星星Star，非常感谢</h4>
