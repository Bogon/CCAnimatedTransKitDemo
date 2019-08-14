//
//  UIViewController+ATK.h
//  CCAnimatedTransitioningKit
//
//  Created by mac on 2019/8/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (ATK)

/**
 简介:
 
 比如 VC1 跳转 VC2, 你想要 VC1 中的哪个视图带有转场动画就指定它(例子: VC1.ATTarget = 执行动画视图),这个对象可以中途随意修改指定。
 
 在返回操作中, 返回的转场动画也是通过它进行定位回到 VC1 中。
 
 注意: ATTarget 如果没有值 默认会使用 VC1.view 作为动画目标使用
 */
@property (nonatomic, weak, nullable) UIView *ATKTarget;

@end

NS_ASSUME_NONNULL_END
