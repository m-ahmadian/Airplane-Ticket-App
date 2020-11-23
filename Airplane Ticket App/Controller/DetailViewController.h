//
//  DetailViewController.h
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"
#import "TicketHistory.h"

NS_ASSUME_NONNULL_BEGIN

// MARK: Protocol declaration
@protocol ViewControllerDelegate <NSObject>
// protocol method
- (void)updateTicketHistory:(NSMutableArray *)ticketHistory;

@end


@interface DetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

// MARK: Properties
@property (nonatomic) NSMutableArray *ticketHistory;
@property (nonatomic, weak) id <ViewControllerDelegate> delegate;

// MARK: Outlets
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// MARK: Actions
- (IBAction)donePressed:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
