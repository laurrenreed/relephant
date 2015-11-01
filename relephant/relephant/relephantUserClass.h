//
//  relephantUserClass.h
//  relephant
//
//  Created by synesthesia on 10/26/15.
//  Copyright © 2015 synesthesia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface relephantUserClass : NSObject
@property (strong, nonatomic, readwrite)NSString *userName;
@property (strong, nonatomic, readwrite)NSString *favEmoji;
@property (strong, nonatomic, readwrite)NSString *favAnimal;
@property (strong, nonatomic, readwrite)NSString *favWeather;
@property (strong, nonatomic, readwrite)NSString *astrologicalSymbol;
@property (strong, nonatomic, readwrite)NSString *favSport;
@property (nonatomic, readwrite)BOOL dayOrNight;
@property (nonatomic, readwrite)BOOL tacoOrPizza;

@end
