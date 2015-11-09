#import "RelephantUser.h"


@implementation RelephantUser


- (NSInteger)makeComparisonToUser:(RelephantUser *)user {
    
    NSInteger comparisonScore = 0;
    
    if ([self.favoriteEmoji isEqualToString:user.favoriteEmoji]) {
        
        comparisonScore ++;
    }
    
    if ([self.favoriteAnimal isEqualToString:user.favoriteAnimal]) {
        
        comparisonScore ++;
    }
    
    if ([self.favoriteWeather isEqualToString:user.favoriteWeather]) {
        
        comparisonScore ++;
    }
    
    if ([self.astrologicalSymbol isEqualToString:user.astrologicalSymbol]) {
        
        comparisonScore ++;
    }
    
    if ([self.favoriteSport isEqualToString:user.favoriteSport]) {
        
        comparisonScore ++;
    }
    
    if ([self.dayOrNight isEqualToString:user.dayOrNight]) {
        
        comparisonScore ++;
    }
    
    if ([self.tacoOrPizza isEqualToString:user.tacoOrPizza]) {
        
        comparisonScore ++;
    }
    

    return comparisonScore;
    
}

- (instancetype)initWithUserId:(NSString *)userID
                          name:(NSString *)name
                 favoriteEmoji:(NSString *)emoji
                favoriteAnimal:(NSString *)animal
               favoriteWeather:(NSString *)weather
                   astroSymbol:(NSString *)astroSymbol
                 favoriteSport:(NSString *)sport
                    dayOrNight:(NSString *)dayOrNight
                   tacoOrPizza:(NSString *)tacoOrPizza
                profilePicture:(UIImage *)profilePicture{
    
    self = [super init];
    
    if (self) {
        _userId = userID;
        _name = name;
        _favoriteEmoji = emoji;
        _favoriteAnimal = animal;
        _favoriteWeather = weather;
        _astrologicalSymbol = astroSymbol;
        _favoriteSport = sport;
        _dayOrNight = dayOrNight;
        _tacoOrPizza = tacoOrPizza;
        _profilePicture = profilePicture;
        
        _groupsIds = [NSArray new];
        _highestMatchScore = 0;
    }
    
    return self;

    
}

- (instancetype)init {
    
    return [self initWithUserId:@""
                           name:@""
                  favoriteEmoji:@""
                 favoriteAnimal:@""
                favoriteWeather:@""
                    astroSymbol:@""
                  favoriteSport:@""
                     dayOrNight:@""
                    tacoOrPizza:@""
                 profilePicture:nil];
}

@end
