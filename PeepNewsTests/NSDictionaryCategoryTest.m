//
//  NSDictionaryCategoryTest.m
//  PeepNews
//

#import <SenTestingKit/SenTestingKit.h>
#import "NSDictionary+CSVString.h"

@interface NSDictionaryCategoryTest : SenTestCase

@end

@implementation NSDictionaryCategoryTest

- (void)testCSV
{
    NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
                       [NSNumber numberWithInt:1], @"a", nil];
    STAssertEqualObjects([d CSVString], @"a,1\n", nil);
}

@end
