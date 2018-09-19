//
//  AlgorithmsTests.m
//  AlgorithmsTests
//
//  Created by Kamil Kwiatkowski on 19/09/2018.
//  Copyright © 2018 Kamil Kwiatkowski. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BinarySearch.h"

@interface AlgorithmsTests : XCTestCase

@property (strong, nonatomic) BinarySearch *binarySearch;

@end

@implementation AlgorithmsTests

- (void)setUp {
    [super setUp];
    self.binarySearch = [BinarySearch new];
}

- (void)tearDown {
    self.binarySearch = nil;
    [super tearDown];
}

- (void)testSimpleSearch {
    NSArray *sortedArray = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10];
    NSUInteger result = [self.binarySearch searchFor:5 inArray:sortedArray];
    NSAssert(result == 4, @"Wrong search result: %lu", result);
}

- (void)testBoundarySearchMin {
    NSArray *sortedArray = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10];
    NSUInteger result = [self.binarySearch searchFor:1 inArray:sortedArray];
    NSAssert(result == 0, @"Wrong search result: %lu", result);
}

- (void)testBoundarySearchMax {
    NSArray *sortedArray = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10];
    NSUInteger result = [self.binarySearch searchFor:10 inArray:sortedArray];
    NSAssert(result == 9, @"Wrong search result: %lu", result);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
