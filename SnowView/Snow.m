//
//  Snow.m
//  SnowView
//
//  Created by honyork on 2016/11/7.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import "Snow.h"
#import <QuartzCore/QuartzCore.h>

@implementation Snow

- (void)creatSnow:(CALayer *)SuperLayer
        SuperView:(UIView *)SuperView{
    CAEmitterLayer *emitter = [CAEmitterLayer layer];
    emitter.frame           = SuperView.frame;
    emitter.emitterPosition = CGPointMake(emitter.bounds.size.width/2, 0);
    emitter.emitterSize     = SuperView.bounds.size;
    emitter.emitterShape    = kCAEmitterLayerRectangle;
    [SuperLayer addSublayer:emitter];
    
    
    CAEmitterCell *emitterCell  = [[CAEmitterCell alloc]init];
    emitterCell.contents        = (__bridge id _Nullable)([UIImage imageNamed:@"flake"].CGImage);
    emitterCell.birthRate  = 400; //  每秒释放多少个粒子
    emitterCell.lifetime   = 3.5 ; // 每个粒子的生命周期
    emitterCell.color      = [UIColor whiteColor].CGColor; // 粒子的颜色
    emitterCell.redRange   = 0.0;  // RGBA设置
    emitterCell.blueRange  = 0.1;
    emitterCell.greenRange = 0.0;
    emitterCell.alphaRange = 0.5;
    emitterCell.velocity   = 9.8 ; // 重力加速度也就是物理里面G
    emitterCell.velocityRange = 550; // 加速范围
    emitterCell.emissionRange =  M_PI_2;    // 下落是旋转的角度
    emitterCell.emissionLongitude = -M_PI; //
    emitterCell.yAcceleration = 70;
    emitterCell.xAcceleration = 0;
    emitterCell.scale      = 0.33 ;// 发射比例
    emitterCell.scaleRange = 1.25;
    emitterCell.scaleSpeed = -0.25;
    emitterCell.alphaRange = 0.5 ;// 透明度调整
    emitterCell.alphaSpeed = -0.15;
    
    emitter.emitterCells = @[emitterCell]; // 载入
    
}

@end
