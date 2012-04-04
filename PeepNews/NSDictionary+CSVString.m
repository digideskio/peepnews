//
//  NSDictionary+CSVString.m
//  PeepNews
//

#import "NSDictionary+CSVString.h"

@implementation NSDictionary (TFCSVSerialize)

- (NSString *)CSVString
{
    NSMutableString *csv = [NSMutableString string];
    for (id key in self) {
        [csv appendFormat:@"%@,%@\n", key, [self objectForKey:key]];
    }
    return csv;
}

@end
