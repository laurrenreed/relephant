#import <Foundation/Foundation.h>
#import "RelephantUser.h"

@interface RelephantGroup : NSObject

@property (strong, nonatomic) NSString *groupId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *members;
@property (strong, nonatomic) NSMutableDictionary *matches; // map the userId to the matched userId
@property (strong, nonatomic) NSNumber *priceCap;
@property (strong, nonatomic) NSString *groupDetail;

-(void)assignMatches;

@end
