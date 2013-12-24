//
//  RegionalData.h
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-22.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
// this class is a singleton and is availbale to all view controllers
//

#import <Foundation/Foundation.h>

@interface RegionalData : NSObject

@property (nonatomic, copy) NSString *regionalStat1;
@property (nonatomic, copy) NSString *regionalStat2;
@property (nonatomic, copy) NSString *regionalStat3;
@property (nonatomic, copy) NSString *regionalStat4;
@property (nonatomic, copy) NSString *regionalStat5;
@property (nonatomic, copy) NSString *regionalStat6;

@property (nonatomic, copy) NSString *medicalStat1;
@property (nonatomic, copy) NSString *medicalStat2;
@property (nonatomic, copy) NSString *medicalStat3;
@property (nonatomic, copy) NSString *medicalStat4;
@property (nonatomic, copy) NSString *medicalStat5;
@property (nonatomic, copy) NSString *medicalStat6;

@property (nonatomic, copy) NSString *utilitiesStat1;
@property (nonatomic, copy) NSString *utilitiesStat2;
@property (nonatomic, copy) NSString *utilitiesStat3;
@property (nonatomic, copy) NSString *utilitiesStat4;
@property (nonatomic, copy) NSString *utilitiesStat5;
@property (nonatomic, copy) NSString *utilitiesStat6;

#pragma mark Singleton Methods
+(id) sharedInstance;
+(void) initialize;


@end
//this is a singleton
