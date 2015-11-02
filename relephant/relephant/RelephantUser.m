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





@end
