//
//  PersonWrapper.m
//  DummyXPC
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

#import "PersonWrapper.h"

@implementation PersonWrapper

-(id)initWithName:(NSString *)name_ title:(NSString *)title_
{
    self = [super init];
    if (self) {
        self.name = name_;
        self.title = title_;
    }
    return self;
}


- (void)encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: [self name] forKey: @"name"];
    [coder encodeObject: [self title] forKey: @"title"];
}

- (id)initWithCoder: (NSCoder *)coder
{
    if((self = [self init]))
    {
        [self setName: [coder decodeObjectOfClass:[NSString class] forKey:@"name"]];
        [self setTitle: [coder decodeObjectOfClass: [NSString class] forKey: @"title"]];
    }
    return self;
}

+ (bool)supportsSecureCoding{
    return true;
}

@end
