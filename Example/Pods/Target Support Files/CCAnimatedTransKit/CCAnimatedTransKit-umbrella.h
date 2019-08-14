#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CCATKBaseViewController.h"
#import "UINavigationController+ATK.h"
#import "UIViewController+ATK.h"
#import "CCAnimatedTransitioning.h"

FOUNDATION_EXPORT double CCAnimatedTransKitVersionNumber;
FOUNDATION_EXPORT const unsigned char CCAnimatedTransKitVersionString[];

