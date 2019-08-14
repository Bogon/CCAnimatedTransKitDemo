//
//  CCATKBaseViewController.m
//  CCAnimatedTransKit
//
//  Created by mac on 2019/8/14.
//

#import "CCATKBaseViewController.h"
#import "CCAnimatedTransitioning.h"

@interface CCATKBaseViewController ()

@end

@implementation CCATKBaseViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationController.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    
    self.navigationController.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    
    if (operation == UINavigationControllerOperationPush) {
        
        if (fromVC.ATKTarget) {
            
            return [[CCAnimatedTransitioning alloc] initWithOperation:operation];
        }
        
    }else if (operation == UINavigationControllerOperationPop) {
        
        if (toVC.ATKTarget) {
            
            return [[CCAnimatedTransitioning alloc] initWithOperation:operation];
        }
        
    }else{ }
    
    return nil;
}


@end
