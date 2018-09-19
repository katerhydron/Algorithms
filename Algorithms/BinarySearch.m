//
//  BinarySearch.m
//  Algorithms
//
//  Created by Kamil Kwiatkowski on 19/09/2018.
//  Copyright © 2018 Kamil Kwiatkowski. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

- (NSUInteger)searchFor:(NSUInteger)number inArray:(NSArray *)array {
    NSLog(@"Binary search. Searching for: %lu in array of %lu elements", number, array.count);
    NSUInteger middleIndex = (array.count - 1) / 2;
    
    while (1 ) {
        NSInteger pickedValue = ((NSNumber *)array[middleIndex]).integerValue;
        NSLog(@"Picked value %ld of index %lu", pickedValue, middleIndex);
        if (pickedValue == number) {
            return middleIndex;
        }
        if (number < pickedValue) {
            middleIndex = middleIndex / 2;
        } else if (number > pickedValue) {
            middleIndex = middleIndex + ((array.count - 1) - middleIndex) / 2;
        }
    }
    return -1;
}

@end
