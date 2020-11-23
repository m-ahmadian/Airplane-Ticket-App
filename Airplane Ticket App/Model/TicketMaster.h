//
//  TicketMaster.h
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ticket.h"

NS_ASSUME_NONNULL_BEGIN

@interface TicketMaster : Ticket

// Properties
@property (nonatomic, strong) NSMutableArray *ticketList;
@property (nonatomic, strong) Ticket *vip;
@property (nonatomic, strong) Ticket *business;
@property (nonatomic, strong) Ticket *economyAdult;
@property (nonatomic, strong) Ticket *economyKid;
@property (nonatomic, strong) Ticket *infant;

@end

NS_ASSUME_NONNULL_END
