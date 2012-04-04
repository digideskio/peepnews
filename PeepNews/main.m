//
//  main.m
//  PeepNews
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "TFProductList.h"
#import "TFProduct.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        TFProductList *productList = [TFProductList new];
        productList.delegate = [[AppDelegate alloc] init];
        NSLog(@"Products: %@", [productList products]);
    }
    return 0;
}

