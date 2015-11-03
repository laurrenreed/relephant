//
//  GroupViewController.m
//  relephant
//
//  Created by Lauren Reed on 11/2/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import "GroupViewController.h"

@interface GroupViewController ()

@end

@implementation GroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.priceCapLabel.text = @"$25";
    self.giftingDateLabel.text = @"December 18, 2015";
    
    
    
    NSLog(@"View loaded in groupview controller");
    
    NSLog(@"DID THIS WORK:? %@", self.chosenGroup.name);
    // Do any additional setup after loading the view.
}


@end
