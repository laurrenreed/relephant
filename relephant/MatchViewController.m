#import "MatchViewController.h"




@interface MatchViewController ()

@end


@implementation MatchViewController

-(void)viewDidLoad {
    
    NSLog(@"Working");
    
    NSLog(@"Did this work, %@", self.selectedUser);
    
    self.matchedUserName.text = self.selectedUser.name;
    self.userID.text = self.selectedUser.userId;
    
    self.faveAnimalEmoji.text = @"🦄";
    self.faveEmoji.text = @"😁";
    self.faveWeather.text = @"⛈";
    self.astrologicalSymbolEmoji.text = @"♓️";
    self.nightOrDayEmoji.text = @"🌙";
    self.tacoOrPizzaEmoji.text = @"🍕";
    self.bioTextField.text = @"All hail Tim and his mighty beard of knowledge.";

}

@end
