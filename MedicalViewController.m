//
//  MedicalViewController.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-22.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import "MedicalViewController.h"

@interface MedicalViewController ()

@end

@implementation MedicalViewController
@synthesize medical;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    RegionalData *regionalData = [[RegionalData alloc] init];
    
    
    
    self.medical = [NSMutableArray arrayWithCapacity:20];
    
    
    regionalData.medicalStat1 = @"lorem medical ipsum1";
    regionalData.medicalStat2 = @"lorem medical  ipsum2";
    regionalData.medicalStat3 = @"lorem medical  ipsum3";
    regionalData.medicalStat4 = @"lorem medical  ipsum4";
    regionalData.medicalStat5 = @"lorem medical  ipsum5";
    regionalData.medicalStat6 = @"lorem medical  ipsum6";
    
    [self.medical addObject:regionalData];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    int aa=[self.medical count];
    return aa;
    
}

- (RegionalViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    RegionalViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MedicalCell"];
    
    RegionalData *regionalData = (self.medical)[indexPath.row];
    
    cell.label7.text =regionalData.medicalStat1;
    cell.label8.text =regionalData.medicalStat2;
    cell.label9.text =regionalData.medicalStat3;
    cell.label10.text =regionalData.medicalStat4;
    cell.label11.text =regionalData.medicalStat5;
    cell.label12.text =regionalData.medicalStat6;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
