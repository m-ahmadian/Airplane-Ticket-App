//
//  Ticket.m
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import "Ticket.h"

@implementation Ticket

// Custom initializer
-(instancetype)initWithType:(NSString *)type {
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}

@end
