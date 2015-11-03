//
//  GroupViewController.m
//  relephant
//
//  Created by Lauren Reed on 11/2/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import "GroupViewController.h"

@interface GroupViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *membersTableView;

@end

@implementation GroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.priceCapLabel.text = @"$25";
    self.giftingDateLabel.text = @"December 18, 2015";
    
    //
    self.membersTableView.delegate = self;
    self.membersTableView.dataSource = self;
    
    
    NSLog(@"View loaded in groupview controller");
    
    NSLog(@"DID THIS WORK:? %@", self.chosenGroup.name);
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.chosenGroup.members.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"groupMemberCell" forIndexPath:indexPath];
    
    RelephantUser *currentUser = self.chosenGroup.members[indexPath.row];
    NSString *nameOfCurrentUser = currentUser.name;
    
    cell.textLabel.text = nameOfCurrentUser;
    cell.imageView.image = currentUser.profilePicture;
    
//    
//    NSString *nameOfMemberInGroup = self.chosenGroup.members[index.row].name;
//    
//    cell.textLabel.text = ;
    
    return cell;
}


@end
