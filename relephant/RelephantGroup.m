#import "RelephantGroup.h"

@implementation RelephantGroup

-(void)assignMatches{
    
    if (!self.members) {
        NSLog(@"RelephantGroup.assignMatches: members is nil");
        return;
    }
    
    if (self.members.count == 0  || self.members.count == 1) {
        NSLog(@"RelephantGroup.assignMatches: members array has less than 2 users");
        return;
    }
    
    if (self.members.count == 2) {
        
        RelephantUser *user1 = self.members[0];
        RelephantUser *user2 = self.members[1];
        
        self.matches[user2.userId] = user1.userId;
        self.matches[user1.userId] = user2.userId;
        
        return;
    }
    

    // TODO: shuffle array before for loop
    
    
    for (RelephantUser *currentUser in self.members) {
        
        RelephantUser *userThatHasBeenMatched;
        
        if (currentUser.bestMatchedUser) {
            continue;
        }
        
        // TODO: what if two users have the same score... add random number generator
        
        for (RelephantUser *matchedUser in self.members) {
            
            if (![currentUser isEqual:matchedUser]) {
                
                NSInteger comparisonScore = [currentUser makeComparisonToUser:matchedUser];
                
                if (comparisonScore > currentUser.highestMatchScore) {
                    currentUser.highestMatchScore = comparisonScore;
                    currentUser.bestMatchedUser = matchedUser;
                    userThatHasBeenMatched = matchedUser;
                }
            }
        }
        
        self.matches[currentUser.userId] = userThatHasBeenMatched;
    }
}

@end
