#import <Foundation/Foundation.h>
#import "QuizViewController.h"
#import "RelephantGroup.h"
@interface RelephantUser : NSObject

@property (strong, nonatomic, readwrite) NSString *userId;
@property (strong, nonatomic, readwrite) NSString *name;
@property (strong, nonatomic, readwrite) NSArray *groupsIds;

// choices for matching...
@property (strong, nonatomic, readwrite) NSString *favoriteEmoji;
@property (strong, nonatomic, readwrite) NSString *favoriteAnimal;
@property (strong, nonatomic, readwrite) NSString *favoriteWeather;
@property (strong, nonatomic, readwrite) NSString *astrologicalSymbol;
@property (strong, nonatomic, readwrite) NSString *favoriteSport;
@property (strong, nonatomic, readwrite) NSString *dayOrNight;
@property (strong, nonatomic, readwrite) NSString *tacoOrPizza;

@property (weak, nonatomic) RelephantUser *bestMatchedUser;

@property (nonatomic) NSInteger highestMatchScore;

- (NSInteger)makeComparisonToUser:(RelephantUser *)user;

@end
