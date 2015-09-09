//
//  PersonWrapper.h
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonWrapper : NSObject <NSSecureCoding>

@property NSString* name;
@property NSString* title;

- (void)encodeWithCoder:(NSCoder *)aCoder;
- (id)initWithCoder:(NSCoder *)aDecoder;
+ (bool)supportsSecureCoding;

@end
