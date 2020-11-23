//
//  ViewController.m
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// MARK: Properties
@property (nonatomic) NSMutableArray *ticketList;
@property (nonatomic) NSMutableArray *ticketHistory;
@property NSInteger objIndex;

@end


@implementation ViewController

// MARK: Synthesize
@synthesize ticketsPickerView, ticketNoTextField, ticketsTextView;


// MARK: Lazy Loading

- (TicketMaster *)tickets {
    if (_tickets == nil) {
        _tickets = [[TicketMaster alloc]init];
    }
    return _tickets;
}

-(NSMutableArray *)ticketList {
    if (_ticketList == nil) {
        _ticketList = [[NSMutableArray alloc]init];
    }
    return _ticketList;
}

-(NSMutableArray *)ticketHistory {
    if (_ticketHistory == nil) {
        _ticketHistory = [[NSMutableArray alloc]init];
    }
    return _ticketHistory;
}


// MARK: View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Set the ticketList array to load pickerView
    self.ticketList = [NSMutableArray arrayWithArray:self.tickets.ticketList];
    
    // Set the ViewController to our PickerView Delegate & DataSource
    ticketsPickerView.delegate = self;
    ticketsPickerView.dataSource = self;
        
    // Populate the Picker View
    [self.ticketsPickerView reloadAllComponents];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    // Set the textView after DetailViewController is dismissed
    ticketsTextView.text = [self.ticketHistory componentsJoinedByString:@"\n"];
    ticketNoTextField.text = @"";
}



// MARK: PickerView Delegate & DataSource Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 5;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Ticket *ticket = [self.ticketList objectAtIndex:row];
    return ticket.type;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    // Set the global variable objIndex to show the index of selected ticket
    self.objIndex = row;
}



// MARK: Actions

- (IBAction)addTicket:(UIButton *)sender {
    
    // set the selected ticket and add it to the ticketHistory
    Ticket *ticket = [self.ticketList objectAtIndex: self.objIndex];
    TicketHistory *selectedTicket = [[TicketHistory alloc]initWithType:ticket.type number:[self.ticketNoTextField.text intValue]];
    [self.ticketHistory addObject:selectedTicket];
    
    // set the title of ticketView with objects of ticketHistory
    ticketsTextView.text = [self.ticketHistory componentsJoinedByString:@"\n"];
}

- (IBAction)goToCheck:(UIButton *)sender {
    // Instantiate the next ViewController
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    // set the next vc's delegate to self and pass ticketHistory
    detailVC.ticketHistory = self.ticketHistory;
    detailVC.delegate = self;
    
    // present the detailVC
    [self presentViewController:detailVC animated:YES completion:nil];
}


// MARK: Protocol Method
- (void)updateTicketHistory:(NSMutableArray *)ticketHistory {
    self.ticketHistory = ticketHistory;
}

@end
