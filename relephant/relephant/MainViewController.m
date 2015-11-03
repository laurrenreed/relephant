#import "MainViewController.h"
#import "RelephantDataStore.h"
#import "MatchViewController.h"
#import "GroupViewController.h"
#import "YourProfileViewController.h"
@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *matchesTableView;
@property (weak, nonatomic) IBOutlet UITableView *groupsTableView;

@property (strong, nonatomic) RelephantDataStore *dataStore;
@property (strong, nonatomic) NSArray *fakeUsers;


@end

@implementation MainViewController


-(void)viewDidLoad   {
    
    NSLog(@"ViewDidLoad");
    
    self.matchesTableView.delegate = self;
    self.matchesTableView.dataSource = self;
    
    self.groupsTableView.delegate = self;
    self.groupsTableView.dataSource = self;
    
    self.dataStore = [RelephantDataStore sharedRelephantDataStore];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"christmasStrip"]];
//    self.view.backgroundColor.contentMode = UIViewContentModeScaleAspectFit;

    
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self.matchesTableView reloadData];
    [self.groupsTableView reloadData];
    
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if ([tableView isEqual:self.matchesTableView]) {
        
        return self.dataStore.users.count;
    } else {
        
        NSLog(@"What is the count here: %ld", self.dataStore.groups.count);
        
        return self.dataStore.groups.count;
    }
    
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     if ([tableView isEqual:self.matchesTableView]) {
         UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"matchesCell" forIndexPath:indexPath];
         
         RelephantUser *currentUser = self.dataStore.users[indexPath.row];
         cell.textLabel.text = currentUser.name;
         
         return cell;
     } else {
         
         UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"groupsCell" forIndexPath:indexPath];
         
         
         RelephantGroup *group = self.dataStore.groups[indexPath.row];
         cell.textLabel.text = group.name;
         
         return cell;

     }
     


         
     
     
    
 
 // Configure the cell...
 
 }


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */
/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */


 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
//  Return NO if you do not want the item to be re-orderable.
 
     return YES;
 }



 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     NSIndexPath *test = self.groupsTableView.indexPathForSelectedRow;
     RelephantGroup *testingGroup = self.dataStore.groups[test.row];
     
     if ([segue.identifier isEqualToString:@"matchViewSegue"]) {
         
         MatchViewController *destVC = segue.destinationViewController;
         
         NSIndexPath *selectedIP = self.matchesTableView.indexPathForSelectedRow;
         RelephantUser *selectedUser = self.dataStore.users[selectedIP.row];
         
         destVC.selectedUser = selectedUser;
         
     } else if([segue.identifier isEqualToString:@"GroupViewSegue"]){
        
         NSIndexPath *test = self.groupsTableView.indexPathForSelectedRow;
         RelephantGroup *testingGroup = self.dataStore.groups[test.row];
         
         GroupViewController *destinationVC = segue.destinationViewController;
         
         destinationVC.chosenGroup = testingGroup;
    
         
//         destVC.se
        
     } else{
         //wtf am i doing 
     }

 
 }


@end
