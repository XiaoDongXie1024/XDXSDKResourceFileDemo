//
//  NSBundle+XDXLocalizable.h
//  XDXRouterFramework
//
//  Created by 小东邪 on 2018/10/22.
//  Copyright © 2018 XDX. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 * Note : Current only support zh-Hans and en.
 */

@interface NSBundle (XDXLocalizable)

+ (instancetype)XDX_localizableBundleWithBundleName:(NSString *)bundleName;
+ (NSString *)XDX_localizedStringForKey:(NSString *)key value:(NSString *)value;
+ (NSString *)XDX_localizedStringForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
