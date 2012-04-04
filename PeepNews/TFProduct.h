//
//  TFProduct.h
//  PeepNews
//

#import <Foundation/Foundation.h>

@interface TFProduct : NSObject {
    NSString *title;
    NSURL *url;
}

- (id) initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSURL *url;

@end
