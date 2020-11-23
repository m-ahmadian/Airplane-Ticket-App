//
//  TicketHistory.h
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ticket.h"

NS_ASSUME_NONNULL_BEGIN

@interface TicketHistory : Ticket

// Properties
@property (nonatomic, strong) NSMutableArray *ticketHistory;
@property (nonatomic, strong) NSString *ticketType;
@property (nonatomic) int number;

// Custom initializer
-(instancetype)initWithType:(NSString *)ticketType number:(int)number;

@end

NS_ASSUME_NONNULL_END
