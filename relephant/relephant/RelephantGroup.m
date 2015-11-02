#import "RelephantGroup.h"

@implementation RelephantGroup

-(void)assignMatches{
    
    if (!self.members) {
        NSLog(@"RelephantGroup.assignMatches: members is nil");
        return;
    }
    
    if (self.members.count == 0) {
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
    
   
    
    
//    for (NSInteger index = 0 ; index < self.members.count ; index++) {
//        
//        currentUser = self.members[index];
//        
//        if (currentUser.bestMatchedUser) {
//            continue;
//        }
//        
//        for (index ; i < self.members.count ; i++) {
//            
//            matchedUser = self.members[i];
//            
//            NSInteger comparisonScore = [user comparisonScoreToUser:matchedUser];
//            
//            if (comparisonScore > currentUser.highestMatchScore) {
//                currentUser.highestMatchScore = comparisonScore;
//                currentUser.bestMatchedUser = matchedUser;
//            }
//        }
//        
//        
//        self.matches[currentUser] = matchedUser;
//    }
    
    
    

    for (RelephantUser *currentUser in self.members) {
        
        RelephantUser *userThatHasBeenmatched;
        
        if (currentUser.bestMatchedUser) {
            continue;
        }
        
        for (RelephantUser *matchedUser in self.members) {
            
            if (![currentUser isEqual:matchedUser]) {
                
                NSInteger comparisonScore = [currentUser makeComparisonToUser:matchedUser];
                
                if (comparisonScore > currentUser.highestMatchScore) {
                    currentUser.highestMatchScore = comparisonScore;
                    currentUser.bestMatchedUser = matchedUser;
                    userThatHasBeenmatched = matchedUser;
                }
            }
        }
        
        
        self.matches[currentUser.userId] = userThatHasBeenmatched;
    }
}







//
//    if (self.members.count == 0 || self.members.count == 1) {
//        NSLog(@"RelephantGroup.assignMatches: members array has less than 2 users");
//        return;
//    }
//
//    if (self.members.count == 2) {
//
//        RelephantUser *user1 = [self.members objectAtIndex:0];
//        RelephantUser *user2 = [self.members objectAtIndex:1];
//
//        self.matches setValue:user1.userId forKey:user2.userId;
//        self.matches setValue:user2.userId forKey:user1.userId;
//        return;
//    }

// TODO: shuffle array

//NSMutableSet *usersForMatching = [[NSMutableSet alloc] initWithArray:self.members];
//
//while (usersForMatching.count > 0 ){
//
//
//
//
//
//
//
//}

@end
