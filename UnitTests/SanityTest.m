//
//  SanityTest.m
//  TDDExample
//
//  Created by Nathan Heagy on 11-02-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h> 
#import <UIKit/UIKit.h>
//#import "application_headers" as required


@interface SanityTest : GHTestCase {}
@end

@implementation SanityTest

-(void) test_OneShouldEqualBLah
{
    GHAssertTrue(YES, @"IT IS TRUETHD");
}

@end
