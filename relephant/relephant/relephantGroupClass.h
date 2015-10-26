//
//  relephantGroupClass.h
//  relephant
//
//  Created by synesthesia on 10/26/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface relephantGroupClass : NSObject
@property (strong, nonatomic)NSString *groupName;
@property (strong, nonatomic)NSMutableArray *membersArray;
@property (nonatomic,strong)NSNumber *priceCap;
@property (strong, nonatomic)NSString *groupDetail;


@end
