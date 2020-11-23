//
//  Ticket.h
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ticket : NSObject

@property (nonatomic, strong) NSString *type;

// Custom initializer
-(instancetype)initWithType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
