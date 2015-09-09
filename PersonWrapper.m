//
//  PersonWrapper.m
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

#import "PersonWrapper.h"

@implementation PersonWrapper

- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: [self name] forKey: @"name"];
    [coder encodeObject: [self title] forKey: @"title"];
}

- (id)initWithCoder: (NSCoder *)coder
{
    if((self = [self init]))
    {
        [self setName: [coder decodeObjectForKey: @"name"]];
        [self setTitle: [coder decodeObjectForKey: @"title"]];
    }
    return self;
}
         

+ (bool)supportsSecureCoding{
    return true;
}

@end
