//
//  DetailViewController.m
//  Airplane Ticket App
//
//  Created by Mehrdad on 2020-10-23.
//  Copyright © 2020 Seneca College. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end


@implementation DetailViewController

@synthesize tableView, delegate;

// MARK: Lazy Loading
- (NSMutableArray *)ticketHistory {
    if (_ticketHistory == nil) {
        _ticketHistory = [[NSMutableArray alloc]init];
    }
    return _ticketHistory;
}


// MARK: View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set the UITableView Delegate & DataSource to self
    tableView.delegate = self;
    tableView.dataSource = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    [self.tableView reloadData];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:YES];
    
    // Call the delegate's method
    [self.delegate updateTicketHistory:self.ticketHistory];
}



// MARK: UITableView Delegate & DataSource Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.ticketHistory count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Configure and return the tableView cell
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"ticketCell"];
    
    TicketHistory *dataObject = [self.ticketHistory objectAtIndex:indexPath.row];
    cell.textLabel.text = dataObject.ticketType;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", dataObject.number];
    
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // delete the edited object and reload tableView
        [self.ticketHistory removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}



// MARK: Actions
- (IBAction)donePressed:(UIButton *)sender {
    // Initialize the UIAlertController
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Thank You!" message:@"Enjoy Your Trip" preferredStyle:UIAlertControllerStyleAlert];
    
    // initialize UIAlertAction and add it to UIAlertController
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [alertView addAction:okAction];
    
    // present the alert view
    [self presentViewController:alertView animated:YES completion:nil];
}


@end
