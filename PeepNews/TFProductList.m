//
//  TFProductList.m
//  PeepNews
//

#import "TFProductList.h"

@implementation TFProductList

@synthesize delegate;

- (NSArray *)products
{
    NSError *err = nil;
    NSURL *url = [NSURL URLWithString:@"http://peepcode.com/products.json"];
    NSData *json = [NSData dataWithContentsOfURL:url];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:json  options:NSJSONReadingMutableContainers error:&err];
    
    NSMutableArray *transformedProducts = [NSMutableArray array];
    for (id object in array) {
        TFProduct *product = [[TFProduct alloc] initWithDictionary:object];
        [transformedProducts addObject:product];
    }
    
    if ([delegate respondsToSelector:@selector(productListDidLoad:)]) {
        [delegate productListDidLoad:self];
    }
    
    return transformedProducts;
}

@end
