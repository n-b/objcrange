//
//  NSNumber+ObjcRange.h
//  objcrange
//
//  Created by Nicolas on 28/08/2013.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (ObjcRange)
// returns an array of the n + 1 NSIntegers between the receiver and `end_`, inclusive.
- (NSArray*) to:(NSNumber*)end_;
@end
