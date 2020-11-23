//
//  TicketHistory.m
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import "TicketHistory.h"

@implementation TicketHistory

// Custom initializer
-(instancetype)initWithType:(NSString *)ticketType number:(int)number {
    self = [super init];
    
    if (self) {
        _ticketType = ticketType;
        _number = number;
    }
    return self;
}

// Override description method
- (NSString *)description {
    return [NSString stringWithFormat:@"%@ quantity is %d", self.ticketType, self.number];
}


@end
