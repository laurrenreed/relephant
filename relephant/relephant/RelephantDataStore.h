#import <Foundation/Foundation.h>
#import "RelephantUser.h"
#import "RelephantGroup.h"

@interface RelephantDataStore : NSObject

@property (nonatomic, strong, readonly) NSArray *users;
@property (nonatomic, strong, readonly) NSArray *groups;
@property (nonatomic, strong, readonly) RelephantUser *loggedInUser;

@end
