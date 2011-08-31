//
//  HasString.m
//  Ordinance
//
//  Created by Christopher Miller on 8/30/11.
//  Copyright 2011 FSDEV. All rights reserved.
//

#import "NSArray+HasString.h"

@implementation NSArray (HasString)

- (BOOL)fs_hasString:(NSString *)sz
{
    return [self indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
																			        	if ([obj isEqualToString:sz]) return YES;
																				        else                          return NO ;
                                                                                    }] != NSNotFound;
}

@end
