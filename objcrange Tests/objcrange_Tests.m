//
//  objcrange_Tests.m
//  objcrange Tests
//
//  Created by Nicolas on 28/08/2013.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSNumber+ObjcRange.h"

@interface objcrange_Tests : XCTestCase
@end

@implementation objcrange_Tests

- (void)testRange
{
    NSArray * range = [@1 to:@22];
    XCTAssertEquals([range count],(NSUInteger)22, @"count should be 22");
}

- (void)testObjectAtIndex
{
    NSArray * range = [@5 to:@27];
    XCTAssertEqualObjects(range[4],@9, @"item 4 should be 8");
}

- (void)testArray
{
    NSArray * range = [@2 to:@5];
    XCTAssertEqualObjects(range,(@[@2,@3, @4, @5]), @"array");
}

- (void)testReverseArray
{
    NSArray * range = [@5 to:@2];
    XCTAssertEqualObjects(range,(@[@2,@3, @4, @5]), @"array");
}

- (void)testNegativeValues
{
    NSArray * range = [@(-5) to:@(-2)];
    XCTAssertEqualObjects(range,(@[@(-5),@(-4),@(-3),@(-2)]), @"array");
}

- (void)testFloatValues
{
    NSArray * range = [@(2.2) to:@(5.4)];
    XCTAssertEqualObjects(range,(@[@2,@3, @4, @5]), @"array");
}

- (void)testEnumeration
{
    NSInteger number = 2;
    for (NSNumber * num in [@2 to:@4]) {
        XCTAssertEquals([num integerValue],number, @"%@ should be %ld",num, number);
        number++;
    }
}

@end
