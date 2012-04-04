//
//  PeepNewsTests.m
//  PeepNewsTests
//

#import <SenTestingKit/SenTestingKit.h>

@interface PeepNewsTests : SenTestCase
@end

@implementation PeepNewsTests

- (void) testTrue
{
    STAssertTrue(YES, @"Message will be shown on failure");
}

- (void) testString
{
    NSString *myString = @"Bacon";
    STAssertEqualObjects(myString, @"Bacon", @"Got %@", myString);
    STAssertEqualObjects(myString.className, @"__NSCFConstantString", @"Should be equal to '%@'", myString.className);
}

- (void) testObjectCreation
{
    NSDictionary *myDictionary = [[NSDictionary alloc] init];
    STAssertEquals((int)[myDictionary count], 0, nil);
    
    NSNumber *myNumber = [NSNumber numberWithInt:42];
    STAssertEqualsWithAccuracy((int)[myNumber intValue], 37, 5, nil);
}

- (void) testDictionary
{
    NSDictionary *myDictionary = 
        [NSDictionary dictionaryWithObjectsAndKeys:@"my value", @"my key",
                                                   @"Fox Tall", @"Narrator", nil];
    
    STAssertEqualObjects([myDictionary objectForKey:@"Narrator"], @"Fox Tall", nil);
    
    int i = 0;
    for (id key in myDictionary) {
        // [myDictionary objectForKey:key];
        i++;
    }
    STAssertEquals(i, 2, nil);
}

@end
