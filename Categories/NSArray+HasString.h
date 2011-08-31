//
//  HasString.h
//  Ordinance
//
//  Created by Christopher Miller on 8/30/11.
//  Copyright 2011 FSDEV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (HasString)

/**
 * Go over the whole array with `isEqualToString:` and return `YES` at the first instance of `sz` in the receiver.
 */
- (BOOL)fs_hasString:(NSString *)sz;

@end
