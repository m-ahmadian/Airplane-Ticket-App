//
//  ViewController.h
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "Ticket.h"
#import "TicketMaster.h"
#import "TicketHistory.h"

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, ViewControllerDelegate>

// MARK: Properties
@property (nonatomic, strong) TicketMaster *tickets;

// MARK: Outlets
@property (weak, nonatomic) IBOutlet UIPickerView *ticketsPickerView;
@property (weak, nonatomic) IBOutlet UITextField *ticketNoTextField;
@property (weak, nonatomic) IBOutlet UITextView *ticketsTextView;

// MARK: Actions
- (IBAction)addTicket:(UIButton *)sender;
- (IBAction)goToCheck:(UIButton *)sender;

@end

