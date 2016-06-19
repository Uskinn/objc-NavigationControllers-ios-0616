//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Sergey Nevzorov on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()
- (IBAction)alButtonPressed:(id)sender;
- (IBAction)joeButtonPressed:(id)sender;
- (IBAction)chrisButtonPressed:(id)sender;
- (IBAction)aviButtonPressed:(id)sender;

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    TeamDetailViewController *transferViewController = segue.destinationViewController;
    
    NSLog(@"%@", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"joeSegue"]) {
        
        transferViewController.teamMember = [[TeamMember alloc]initWithName:@"Joe"
                                                                phoneNumber:@"347.357.5398"
                                                                  birthCity:@"Bristol"
                                                                 birthState:@"CT"
                                                               favoriteBand:@"ABBA"
                                                                      photo: [UIImage imageNamed:@"joe"]];
        
    } else  if ([segue.identifier isEqualToString:@"aviSegue"]) {
        
        transferViewController.teamMember = [[TeamMember alloc]initWithName:@"Avi"
                                                                phoneNumber:@"347.357.9041"
                                                                  birthCity:@"Irvington"
                                                                 birthState:@"NY"
                                                               favoriteBand:@"Limp Bizkit"
                                                                      photo:[UIImage imageNamed:@"avi"]];
        
    } else if ([segue.identifier isEqualToString:@"chrisSegue"]) {
        
        transferViewController.teamMember = [[TeamMember alloc]initWithName:@"Chris"
                                                                phoneNumber:@"347.357.3274"
                                                                  birthCity:@"Colver"
                                                                 birthState:@"PA"
                                                               favoriteBand:@"Dr. Alban"
                                                                      photo:[UIImage imageNamed:@"chris"]];
        
    } else if ([segue.identifier isEqualToString:@"alSegue"]) {
        
        transferViewController.teamMember = [[TeamMember alloc]initWithName:@"Al"
                                                                phoneNumber:@"5551212"
                                                                  birthCity:@"Detroit"
                                                                 birthState:@"Michigan"
                                                               favoriteBand:@"The Beatles"
                                                                      photo:[UIImage imageNamed:@"al"]];
        
    }
}

- (IBAction)alButtonPressed:(id)sender {
}

- (IBAction)joeButtonPressed:(id)sender {
}

- (IBAction)chrisButtonPressed:(id)sender {
}

- (IBAction)aviButtonPressed:(id)sender {
}
@end
