//
//  TFProductListTest.m
//  PeepNews
//

#import <SenTestingKit/SenTestingKit.h>
#import "TFProductList.h"
#import "TFProduct.h"

@interface TFProductListTest : SenTestCase {
    TFProductList *productList;
}
@end

@implementation TFProductListTest

- (void)setUp
{
    productList = [[TFProductList alloc] init];
}

- (void)testProducts
{
    NSArray *products = [productList products];
    STAssertEquals((int)[products count], 10, nil);

    TFProduct *product = [products objectAtIndex:0];
    STAssertEqualObjects(product.title, @"Full Stack Node.js Part 1", nil);                 
}

@end
