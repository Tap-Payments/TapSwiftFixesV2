//
//  AppearanceFixes.h
//  TapSwiftFixes
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

#import <TargetConditionals.h>

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR

@import Foundation.NSArray;
@import ObjectiveC.NSObject;

@protocol UIAppearanceContainer;

/**
 Appearance fixes.
 */
@protocol Appearance <NSObject>

+ (instancetype _Nullable)appearanceWhenContainedInContainersOfType:(NSArray <Class<UIAppearanceContainer>> * _Nullable)containerClasses;

@end

@interface NSObject (Appearance) <Appearance> @end

#endif

