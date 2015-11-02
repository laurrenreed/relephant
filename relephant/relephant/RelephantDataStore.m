#import "RelephantDataStore.h"

@interface RelephantDataStore ()

@property (nonatomic, strong, readwrite) NSArray *users;
@property (nonatomic, strong, readwrite) NSMutableArray *groups;
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
        
        RelephantUser *user1 = [[RelephantUser alloc] initWithUserId:@"user1"
                                                                name:@"Tim Clem"
                                                       favoriteEmoji:@"smile"
                                                      favoriteAnimal:@"giraffe"
                                                     favoriteWeather:@"sunshine"
                                                         astroSymbol:@"capricorn"
                                                       favoriteSport:@"football"
                                                          dayOrNight:@"day"
                                                         tacoOrPizza:@"pizza"];
        
        RelephantUser *user2 = [[RelephantUser alloc] initWithUserId:@"user2"
                                                                name:@"Jim Campagno"
                                                       favoriteEmoji:@"wink"
                                                      favoriteAnimal:@"bear"
                                                     favoriteWeather:@"rain"
                                                         astroSymbol:@"pisces"
                                                       favoriteSport:@"soccer"
                                                          dayOrNight:@"day"
                                                         tacoOrPizza:@"pizza"];
        
        RelephantUser *user3 = [[RelephantUser alloc] initWithUserId:@"user3"
                                                                name:@"Tom O'Malley"
                                                       favoriteEmoji:@"frown"
                                                      favoriteAnimal:@"cat"
                                                     favoriteWeather:@"cloudy"
                                                         astroSymbol:@"gemini"
                                                       favoriteSport:@"baseball"
                                                          dayOrNight:@"night"
                                                         tacoOrPizza:@"taco"];
   
        
        RelephantUser *user4 = [[RelephantUser alloc] initWithUserId:@"user4"
                                                                name:@"Mark Ward Murry"
                                                       favoriteEmoji:@"wink"
                                                      favoriteAnimal:@"dog"
                                                     favoriteWeather:@"sunshine"
                                                         astroSymbol:@"aries"
                                                       favoriteSport:@"soccer"
                                                          dayOrNight:@"night"
                                                         tacoOrPizza:@"taco"];
      
        RelephantUser *user5 = [[RelephantUser alloc] initWithUserId:@"user5"
                                                                name:@"Joe Burges"
                                                       favoriteEmoji:@"smile"
                                                      favoriteAnimal:@"dog"
                                                     favoriteWeather:@"rain"
                                                         astroSymbol:@"capricorn"
                                                       favoriteSport:@"football"
                                                          dayOrNight:@"day"
                                                         tacoOrPizza:@"taco"];
        
        _users = @[user1, user2, user3, user4, user5]; // TODO: should we use a dictionary?
        
        // add users to groups...
        
        group1.members = [@[ user1, user2, user3, user4, user5] mutableCopy];
        group2.members = [@[ user2, user4] mutableCopy];
        group3.members = [@[ user1, user3, user5] mutableCopy];
        
        // set logged in user...
        _loggedInUser = user1;
    }
    
    return self;
}

@end
