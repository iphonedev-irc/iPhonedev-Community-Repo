//
//  NSDictionary+FormEncode.m
//  FSKit
//
//  Created by Christopher Miller on 7/29/11.
//  Copyright 2011 FSDEV. All rights reserved.
//

#import "NSDictionary+FormEncode.h"

@implementation NSDictionary (FormEncode)

- (NSString *)fs_formEncodedString
{
    if ([[self allKeys] count] == 0)
        return @"";
    NSMutableString * sz = [NSMutableString string];
    NSArray * keys = [self allKeys];
    NSArray * objects = [self allValues];
    NSUInteger count = [keys count];
    
    for (NSUInteger i = 0; i < count; ++i) {
        [sz appendFormat:@"%@=%@", [keys objectAtIndex:i], [objects objectAtIndex:i]];
        if (i != count - 1)
            [sz appendString:@"&"];
    }
    
    return [NSString stringWithString:sz];
}

@end
