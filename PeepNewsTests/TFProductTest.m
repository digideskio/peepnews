//
//  TFProductTest.m
//  PeepNews
//

#import <SenTestingKit/SenTestingKit.h>
#import "TFProduct.h"

@interface TFProductTest : SenTestCase {
    TFProduct *product;
}

@end

@implementation TFProductTest

- (void)setUp
{
    NSDictionary *dictionary = 
        [NSDictionary dictionaryWithObjectsAndKeys:
         @"Haml and Sass", @"title",
         @"http://peepcode.com/products/haml-and-sass", @"url", 
         nil];
    
    product = [[TFProduct alloc] initWithDictionary:dictionary];
}

- (void)testAttributes
{
    STAssertEqualObjects(product.title, @"Haml and Sass", nil);
    STAssertEqualObjects(product.url.relativePath, @"/products/haml-and-sass", nil);
}

- (void)testObjectType
{
    STAssertEqualObjects(product.className, @"TFProduct", nil);
}

@end