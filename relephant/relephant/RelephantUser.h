#import <Foundation/Foundation.h>
#import "QuizViewController.h"
#import "RelephantGroup.h"
@interface RelephantUser : NSObject



@property (strong, nonatomic, readwrite) NSArray *groupsIds;
@property (weak, nonatomic) RelephantUser *bestMatchedUser;
@property (nonatomic) NSInteger highestMatchScore;

@property (strong, nonatomic, readwrite) NSString *name;
@property (strong, nonatomic, readwrite) NSString *userId;
@property (strong, nonatomic) UIImage *profilePicture;

// choices for matching...
@property (strong, nonatomic, readwrite) NSString *favoriteEmoji;
@property (strong, nonatomic, readwrite) NSString *favoriteAnimal;
@property (strong, nonatomic, readwrite) NSString *favoriteWeather;
@property (strong, nonatomic, readwrite) NSString *astrologicalSymbol;
@property (strong, nonatomic, readwrite) NSString *favoriteSport;
@property (strong, nonatomic, readwrite) NSString *dayOrNight;
@property (strong, nonatomic, readwrite) NSString *tacoOrPizza;



- (NSInteger)makeComparisonToUser:(RelephantUser *)user;

- (instancetype)initWithUserId:(NSString *)userID
                          name:(NSString *)name
                 favoriteEmoji:(NSString *)emoji
                favoriteAnimal:(NSString *)animal
               favoriteWeather:(NSString *)weather
                   astroSymbol:(NSString *)astroSymbol
                 favoriteSport:(NSString *)sport
                    dayOrNight:(NSString *)dayOrNight
                   tacoOrPizza:(NSString *)tacoOrPizza
                profilePicture:(UIImage *)profilePicture;

- (instancetype)init NS_UNAVAILABLE;




@end
