//
//  NSDictionary+FormEncode.h
//  FSKit
//
//  Created by Christopher Miller on 7/29/11.
//  Copyright 2011 FSDEV. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Small extension to form-encode an `NSDictionary`.
 */
@interface NSDictionary (FormEncode)

/**
 * Generate a form-encoded string using the contents of the receiver.
 * 
 * For instance, an NSDictionary with the following items:
 *
 * - `dataFormat` => `application/json`
 * - `sessionId` => `someSessionId`
 *
 * Will be transformed to the string:
 *
 *    dataFormat=application/json&sessionId=someSessionId
 *
 * The question mark (`?`) will not be prepended, and no URL-encoding will take place, either. If you need URL-encoding, I would suggest iterating over the reciever beforehand and using `NSString`'s URL encoding feature.
 */
- (NSString *)fs_formEncodedString;

@end
