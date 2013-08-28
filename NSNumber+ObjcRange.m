//
//  NSNumber+ObjcRange.m
//  objcrange
//
//  Created by Nicolas on 28/08/2013.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "NSNumber+ObjcRange.h"

@interface ObjcRange : NSArray
- (id) initWithNumbersFrom:(NSInteger)start_ to:(NSInteger)end_;
@end

@implementation ObjcRange
{
    NSInteger _start,  _end;
}

- (id)initWithNumbersFrom:(NSInteger)start_ to:(NSInteger)end_
{
    self = [super init];
    if(start_ < end_) {
        _start = start_;
        _end = end_;
    } else {
        _start = end_;
        _end = start_;
    }
    return self;
}

- (NSUInteger)count
{
    return _end - _start + 1;
}

- (id)objectAtIndex:(NSUInteger)index
{
    return @(_start + (NSInteger)index);
}

@end

@implementation NSNumber (ObjcRange)
- (NSArray*) to:(NSNumber*)end_
{
    return [[ObjcRange alloc] initWithNumbersFrom:[self integerValue] to:[end_ integerValue]];
}
@end

