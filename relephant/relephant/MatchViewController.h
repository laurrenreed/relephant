#import <UIKit/UIKit.h>
#import "RelephantUser.h"
#import "RelephantGroup.h"
#import "MatchViewController.h"
@interface MatchViewController : UIViewController

@property (nonatomic, strong) RelephantUser *selectedUser;
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UILabel *matchedUserName;
@property (weak, nonatomic) IBOutlet UILabel *userID;
@property (weak, nonatomic) IBOutlet UILabel *faveAnimalEmoji;
@property (weak, nonatomic) IBOutlet UILabel *faveEmoji;
@property (weak, nonatomic) IBOutlet UILabel *faveWeather;
@property (weak, nonatomic) IBOutlet UILabel *astrologicalSymbolEmoji;
@property (weak, nonatomic) IBOutlet UILabel *nightOrDayEmoji;
@property (weak, nonatomic) IBOutlet UILabel *tacoOrPizzaEmoji;
@property (weak, nonatomic) IBOutlet UITextView *bioTextField;

@end
