//
//  RegionalData.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-22.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
// this class is a singleton
//identifies the data model for the view
//interacts with the datasource
//interacts wit the view
//the OS will make sure that initialize is used only once
//check out the GCD (grand central dispatch) in sharedInstance
//

#import "RegionalData.h"

@implementation RegionalData


@synthesize regionalStat1;
@synthesize regionalStat2;
@synthesize regionalStat3;
@synthesize regionalStat4;
@synthesize regionalStat5;
@synthesize regionalStat6;

@synthesize medicalStat1;
@synthesize medicalStat2;
@synthesize medicalStat3;
@synthesize medicalStat4;
@synthesize medicalStat5;
@synthesize medicalStat6;

@synthesize utilitiesStat1;
@synthesize utilitiesStat2;
@synthesize utilitiesStat3;
@synthesize utilitiesStat4;
@synthesize utilitiesStat5;
@synthesize utilitiesStat6;

+(void) initialize
{
     [[self alloc] init];
    
}

+(id) sharedInstance
{
    static RegionalData *regData=nil;
    static dispatch_once_t regdatatoken;
    
    dispatch_once(&regdatatoken, ^{
        regData = [[self alloc] init];
    });
    return regData;
}

- (id)init {
    if (self = [super init]) {
        regionalStat1 = [[NSString alloc] init];
        regionalStat2 = [[NSString alloc] init];
        regionalStat3 = [[NSString alloc] init];
        regionalStat4 = [[NSString alloc] init];
        regionalStat5 = [[NSString alloc] init];
        regionalStat6 = [[NSString alloc] init];
        
        medicalStat1 = [[NSString alloc] init];
        medicalStat2 = [[NSString alloc] init];
        medicalStat3 = [[NSString alloc] init];
        medicalStat4 = [[NSString alloc] init];
        medicalStat5 = [[NSString alloc] init];
        medicalStat6 = [[NSString alloc] init];
        
        utilitiesStat1 = [[NSString alloc] init];
        utilitiesStat2 = [[NSString alloc] init];
        utilitiesStat3 = [[NSString alloc] init];
        utilitiesStat4 = [[NSString alloc] init];
        utilitiesStat5 = [[NSString alloc] init];
        utilitiesStat6 = [[NSString alloc] init];
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end

