//
//  RegionalViewController.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-22.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import "RegionalViewController.h"
//#import "RegionalViewCell.h"

@interface RegionalViewController ()

@end

@implementation RegionalViewController
@synthesize  regional;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
   
    if (self) {
        
       
    }
    return self;
}

- (void)viewDidLoad
{
   
    
    RegionalData *regionalData = [[RegionalData alloc] init];
    
  
    
    self.regional = [NSMutableArray arrayWithCapacity:20];
    
    
    regionalData.regionalStat1 = @"lorem ipsum1";
    regionalData.regionalStat2 = @"lorem ipsum2";
    regionalData.regionalStat3 = @"lorem ipsum3";
    regionalData.regionalStat4 = @"lorem ipsum4";
    regionalData.regionalStat5 = @"lorem ipsum5";
    regionalData.regionalStat6 = @"lorem ipsum6";
    
    [self.regional addObject:regionalData];
    
    
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
    //number of rows will be the number of items in the Mutable array
    
    int aa=[self.regional count];
    return aa;
}


- (RegionalViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    RegionalViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RegionalCell"];
    
    RegionalData *regionalData = (self.regional)[indexPath.row];
  
    cell.label1.text =regionalData.regionalStat1;
    cell.label2.text =regionalData.regionalStat2;
    cell.label3.text =regionalData.regionalStat3;
    cell.label4.text =regionalData.regionalStat4;
    cell.label5.text =regionalData.regionalStat5;
    cell.label6.text =regionalData.regionalStat6;


    
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
