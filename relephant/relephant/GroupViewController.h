//
//  GroupViewController.h
//  relephant
//
//  Created by Lauren Reed on 11/2/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RelephantGroup.h"

@interface GroupViewController : UIViewController

@property (strong, nonatomic) NSString *nameSelected;
@property (weak, nonatomic) IBOutlet UILabel *priceCapLabel;
@property (weak, nonatomic) IBOutlet UILabel *giftingDateLabel;
@property (strong, nonatomic) RelephantGroup *chosenGroup;

@end
