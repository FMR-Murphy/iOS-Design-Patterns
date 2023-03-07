//
//  ViewController.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "ViewController.h"
#import "ElectricFan.h"
#import "RiceCooker.h"
#import "TwoGabPowerPoint.h"
#import "ThreeGabPowerPoint.h"
#import "FastPowerAdapter.h"

#import "IPhone.h"
#import "MiPhone.h"
#import "FastPowerAdapter.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"======================= 家用电器 =======================");
    // 电风扇、电饭锅可直接使用墙上插座 220V的电 直接电源线
    ElectricFan *fan = [[ElectricFan alloc] init];
    fan.powerPoint = [[TwoGabPowerPoint alloc] init];
    [fan startWind];
    NSLog(@"");
    RiceCooker *cooker = [[RiceCooker alloc] init];
    cooker.powerPoint = [[ThreeGabPowerPoint alloc] init];
    [cooker startCookRice];
    
    NSLog(@"======================= 手机充电 =======================");
    // 手机，电脑，电动牙刷等不能直接使用 220V的电，所以需要一个电源适配器
    FastPowerAdapter *appleAdapter = [[FastPowerAdapter alloc] init];
    appleAdapter.point = [[TwoGabPowerPoint alloc] init];
    IPhone *iPhone = [[IPhone alloc] init];
    iPhone.powerAdapter = appleAdapter;
    [iPhone betteryCharging:PowerLineTypeCToL];
    
    NSLog(@"");
    MiPhone *miPhone = [[MiPhone alloc] init];
    miPhone.powerAdapter = appleAdapter;
    [miPhone betteryCharging:PowerLineTypeCToC];
}


@end
