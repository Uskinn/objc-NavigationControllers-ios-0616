//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Sergey Nevzorov on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"


@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *teamMemberPhoto;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberName;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberPhone;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberBirthPlace;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberFavoriteBrand;




@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.teamMemberPhone.text = [NSString stringWithFormat:@"Phone number: %@", self.teamMember.phoneNumber];
    self.teamMemberName.text = [NSString stringWithFormat:@"Name: %@", self.teamMember.name ];
    self.teamMemberFavoriteBrand.text = [NSString stringWithFormat:@"Favorite band: %@", self.teamMember.favoriteBand ];
    self.teamMemberPhoto.image = self.teamMember.photo;
    self.teamMemberBirthPlace.text = [NSString stringWithFormat:@"Place of birth: %@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    
    
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

@end
