//
//  DummyService.m
//  DummyService
//
//  Created by Руслан on 09.09.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

#import "DummyService.h"

@implementation DummyService

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}

- (void)getACat:(void (^)(PersonWrapper *))reply {
    PersonWrapper* myMan = [[PersonWrapper alloc] initWithName:@"Ruslan" title:@"Student"];
    NSLog(@"Man created");
    reply(myMan);
}

@end
