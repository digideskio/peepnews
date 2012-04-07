//
//  TFProductList.h
//  PeepNews
//

#import <Foundation/Foundation.h>
#import "TFProduct.h"

@protocol TFProductListDelegate <NSObject>
@optional
- (void)productListDidLoad:(id)sender;
@end

@interface TFProductList : NSObject {
    NSArray *products;
    NSString *url;
    id <TFProductListDelegate> delegate;
}

- (NSArray *)products;

@property (nonatomic, retain) id <TFProductListDelegate> delegate;
@property (nonatomic, retain) NSString *url;

@end
