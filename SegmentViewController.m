//
//  SegmentViewController.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-24.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()

@end

@implementation SegmentViewController
@synthesize typeSegmentedControl, currentViewController,viewControllers,viewOne,viewTwo;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    //NSLog(@"in view did load");
    // add viewController so you can switch them later.
    //divide up the screen
    CGRect areaOne, areaTwo;
    CGRectDivide(self.view.bounds, &areaOne, &areaTwo, self.view.bounds.size.height* 0.15, CGRectMinYEdge);
    self.viewOne = [[UIView alloc] initWithFrame:CGRectInset(areaOne, 10, 10)];
    self.viewTwo = [[UIView alloc] initWithFrame:CGRectInset(areaTwo, 10, 10)];
    // viewOne.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.1];
    viewOne.layer.borderWidth = 2.0;
    viewOne.layer.borderColor = [UIColor lightGrayColor].CGColor;
    // viewTwo.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.1];
    viewTwo.layer.borderWidth = 2.0;
    viewTwo.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    
    [self.view addSubview:viewOne];
    [self.view addSubview:viewTwo];
    //end dividing up screen area
    
    [viewOne addSubview:self.typeSegmentedControl ];
    //set up NSArray with view controllers to display
    MedicalViewController *fc=[[MedicalViewController alloc] initWithStyle:UITableViewStylePlain];
    UtilitiesViewController *uc=[[UtilitiesViewController alloc] initWithStyle:UITableViewStylePlain];
    RegionalViewController *rc=[[RegionalViewController alloc] initWithStyle:UITableViewStylePlain];
    self.viewControllers=[NSArray arrayWithObjects:fc,uc,rc,nil];
    //end setting up array
    
    UITableViewController *vc = [self viewControllerForSegmentIndex:self.typeSegmentedControl.selectedSegmentIndex];
    [self addChildViewController:vc];
    //vc.view.frame = self.contentView.bounds;
    vc.view.frame = self.viewTwo.bounds;
    
    [self.viewTwo addSubview:vc.view];
    self.currentViewController = vc;
    [super viewDidLoad];
}
- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    NSLog(@"in segment changed");
    UITableViewController *vc = [self viewControllerForSegmentIndex:sender.selectedSegmentIndex];
    [self addChildViewController:vc];
    [self transitionFromViewController:self.currentViewController toViewController:vc duration:0.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
        [self.currentViewController.view removeFromSuperview];
        vc.view.frame = self.viewTwo.bounds;
        [self.viewTwo addSubview:vc.view];
    } completion:^(BOOL finished) {
        [vc didMoveToParentViewController:self];
        [self.currentViewController removeFromParentViewController];
        self.currentViewController = vc;
    }];
    self.navigationItem.title = vc.title;
}

- (UITableViewController *)viewControllerForSegmentIndex:(NSInteger)index {
    UITableViewController *vc;
    switch (index) {
        case 0:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"firstTable"];
            break;
        case 1:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondTable"];
            break;
        case 2:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"thirdTable"];
            break;
    }
    return vc;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
