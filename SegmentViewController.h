//
//  SegmentViewController.h
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-24.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//this is the view controller that swaps in all thetable views
//based on what is chosen in the segmented control
//the views on the screen are divided using CGRect
//

#import <UIKit/UIKit.h>
#import "MedicalViewController.h"
#import "UtilitiesViewController.h"
#import "RegionalViewController.h"

@interface SegmentViewController : UIViewController

@property (nonatomic, strong) IBOutlet UISegmentedControl *typeSegmentedControl;
@property (nonatomic, strong) IBOutlet UIView *viewOne;
@property (nonatomic, strong) IBOutlet UIView *viewTwo;
@property (nonatomic, strong) IBOutlet UITableViewController *currentViewController;
@property (strong, nonatomic) NSArray *viewControllers;

@end

