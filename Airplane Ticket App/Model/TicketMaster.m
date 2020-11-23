//
//  TicketMaster.m
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import "TicketMaster.h"

@implementation TicketMaster

- (NSMutableArray *)ticketList {
    if (_ticketList == nil) {
        _ticketList = [[NSMutableArray alloc]initWithObjects:self.vip, self.business, self.economyAdult, self.economyKid, self.infant, nil];
    }
    return _ticketList;
}


// Ticket instances

- (Ticket *)vip {
    if (_vip == nil) {
        _vip = [[Ticket alloc]initWithType:@"VIP"];
    }
    return _vip;
}

- (Ticket *)business {
    if (_business == nil) {
        _business = [[Ticket alloc]initWithType:@"Business"];
    }
    return _business;
}

- (Ticket *)economyAdult {
    if (_economyAdult == nil) {
        _economyAdult = [[Ticket alloc]initWithType:@"Economy Adult"];
    }
    return _economyAdult;
}

- (Ticket *)economyKid {
    if (_economyKid == nil) {
        _economyKid = [[Ticket alloc]initWithType:@"Economy Kid"];
    }
    return _economyKid;
}

- (Ticket *)infant {
    if (_infant == nil) {
        _infant = [[Ticket alloc]initWithType:@"Infant"];
    }
    return _infant;
}

@end
