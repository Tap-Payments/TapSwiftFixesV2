//
//  AppearanceFixes.m
//  TapSwiftFixes
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

#import <TargetConditionals.h>

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR

@import UIKit.UIAppearance;

#import "AppearanceFixes.h"

@implementation NSObject (Appearance)

+ (instancetype)appearanceWhenContainedInContainersOfType:(NSArray<Class<UIAppearanceContainer>> *)containerClasses
{
    if ( ![self conformsToProtocol: @protocol(UIAppearance)] ) { return nil; }

    if ( containerClasses.count == 0 )
    {
        return [(Class<UIAppearance>)self appearance];
    }

    __unsafe_unretained id  *argList = (__unsafe_unretained id  *) calloc(1UL, sizeof(id) * containerClasses.count);
    for (NSUInteger i = 0; i < containerClasses.count; i++)
    {
        argList[i] = containerClasses[i];
    }

    id result = [(Class<UIAppearance>)self appearanceWhenContainedIn: *argList, nil];

    free(argList);

    return result;
}

@end

#endif

