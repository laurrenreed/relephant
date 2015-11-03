//
//  YourProfileViewController.m
//  relephant
//
//  Created by Lauren Reed on 11/3/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import "YourProfileViewController.h"

@interface YourProfileViewController ()

@end

@implementation YourProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.name.text = @"Joe Burgess";
    self.userID.text = @"joeburgess23";
    
    self.faveAnimal.text = @"🦄";
    self.faveEmoji.text = @"💩";
    self.faveWeather.text = @"❄️";
    self.astroSymbol.text = @"♓️";
    self.nightVSday.text = @"☀️";
    self.tacoOrPizza.text = @"🍕";
    self.bioBox.text = @"This is my bio where I say things about myself that others probably think are interesting. Good day.";
    
}

@end
