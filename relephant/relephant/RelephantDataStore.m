#import "RelephantDataStore.h"

@interface RelephantDataStore ()

@property (nonatomic, strong, readwrite) NSArray *users;
@property (nonatomic, strong, readwrite) NSArray *groups;
@property (nonatomic, strong, readwrite) RelephantUser *loggedInUser;

@end

@implementation RelephantDataStore

+ (instancetype)sharedRelephantDataStore {
    static RelephantDataStore *_sharedRelephantDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedRelephantDataStore = [[RelephantDataStore alloc] initWithSampleData];
    });
    
    return _sharedRelephantDataStore;
}

-(instancetype)initWithSampleData{
    
    self = [super init];
    if(self){
        
        // create groups...
        
        RelephantGroup *group1 = [[RelephantGroup alloc] init];
        group1.priceCap = @(25);
        
        RelephantGroup *group2 = [[RelephantGroup alloc] init];
        group2.priceCap = @(50);
        
        RelephantGroup *group3 = [[RelephantGroup alloc] init];
        group3.priceCap = @(15);
        
        _groups = @[group1, group2, group3]; // TODO: should we use a dictionary?
        
        // create users...
        
        RelephantUser *user1 = [[RelephantUser alloc] init];
        
        user1.userId = @"user1";
        user1.name = @"Tim Clem";
        user1.favoriteEmoji = @"smile";
        user1.favoriteAnimal = @"giraffe";
        user1.favoriteWeather = @"sunshine";
        user1.astrologicalSymbol = @"capricorn";
        user1.favoriteSport = @"football";
        user1.dayOrNight = @"day";
        user1.tacoOrPizza = @"pizza";
        
        RelephantUser *user2 = [[RelephantUser alloc] init];
        
        user2.userId = @"user2";
        user2.name = @"Jim Campligano";
        user2.favoriteEmoji = @"wink";
        user2.favoriteAnimal = @"bear";
        user2.favoriteWeather = @"rain";
        user2.astrologicalSymbol = @"pisces";
        user2.favoriteSport = @"soccer";
        user2.dayOrNight = @"day";
        user2.tacoOrPizza = @"pizza";
        
        RelephantUser *user3 = [[RelephantUser alloc] init];
        
        user3.userId = @"user3";
        user3.name = @"Tom O'Malley";
        user3.favoriteEmoji = @"frown";
        user3.favoriteAnimal = @"cat";
        user3.favoriteWeather = @"cloudy";
        user3.astrologicalSymbol = @"gemini";
        user3.favoriteSport = @"baseball";
        user3.dayOrNight = @"night";
        user3.tacoOrPizza = @"taco";
        
        RelephantUser *user4 = [[RelephantUser alloc] init];
        
        user4.userId = @"user4";
        user4.name = @"Mark Ward Murry";
        user4.favoriteEmoji = @"wink";
        user4.favoriteAnimal = @"dog";
        user4.favoriteWeather = @"sunshine";
        user4.astrologicalSymbol = @"aries";
        user4.favoriteSport = @"soccer";
        user4.dayOrNight = @"night";
        user4.tacoOrPizza = @"taco";
        
        RelephantUser *user5 = [[RelephantUser alloc] init];
        
        user5.userId = @"user5";
        user5.name = @"Joe Burges";
        user5.favoriteEmoji = @"smile";
        user5.favoriteAnimal = @"dog";
        user5.favoriteWeather = @"rain";
        user5.astrologicalSymbol = @"capricorn";
        user5.favoriteSport = @"football";
        user5.dayOrNight = @"day";
        user5.tacoOrPizza = @"taco";
        
        _users = @[user1, user2, user3, user4, user5]; // TODO: should we use a dictionary?
        
        // add users to groups...
        
        group1.members = @[ user1, user2, user3, user4, user5];
        group2.members = @[ user2, user4];
        group3.members = @[ user1, user3, user5];
        
        // set logged in user...
        _loggedInUser = user1;
    }
    
    return self;
}

@end
