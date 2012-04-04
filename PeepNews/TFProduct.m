//
//  TFProduct.m
//  PeepNews
//

#import "TFProduct.h"

@interface TFProduct (PrivateMethods)
- (void)doSomething:(NSString *)anArg;
@end

@implementation TFProduct

@synthesize title;
@synthesize url;

- (id) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:@"title"];
        self.url = [NSURL URLWithString:[dictionary objectForKey:@"url"]];
        return self;
    }
    return nil;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ --- %@", title, url];
}

@end
