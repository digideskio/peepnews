//
//  TFProductList.m
//  PeepNews
//

#import "TFProductList.h"

@implementation TFProductList

@synthesize delegate;
@synthesize url;

- (id) init
{
  self = [super init];
  if (self) {
    url = [[NSBundle mainBundle] pathForResource:@"products" ofType:@"json"];
    return self;
  }
  return nil;
}

- (NSArray *)products
{
    NSError *err = nil;
    NSData *json = [NSData dataWithContentsOfFile:url];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingMutableContainers error:&err];
    
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
