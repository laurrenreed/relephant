//
//  YourProfileViewController.h
//  relephant
//
//  Created by Lauren Reed on 11/3/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YourProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *userID;
@property (weak, nonatomic) IBOutlet UILabel *faveAnimal;
@property (weak, nonatomic) IBOutlet UILabel *faveEmoji;
@property (weak, nonatomic) IBOutlet UILabel *faveWeather;
@property (weak, nonatomic) IBOutlet UILabel *astroSymbol;
@property (weak, nonatomic) IBOutlet UILabel *nightVSday;
@property (weak, nonatomic) IBOutlet UILabel *tacoOrPizza;
@property (weak, nonatomic) IBOutlet UITextView *bioBox;
@property (weak, nonatomic) IBOutlet UIImageView *profileImge;

@end
