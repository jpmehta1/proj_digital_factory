//
//  CalculatorCore.m
//  Digital_Factory
//
//  Created by Jeet P Mehta on 13/11/24.
//
#import "CalculatorCore.h"
#import <math.h>

@implementation CalculatorCore

+ (double)add:(double)a to:(double)b {
    return a + b;
}

+ (double)subtract:(double)a from:(double)b {
    return a - b;
}

+ (double)multiply:(double)a by:(double)b {
    return a * b;
}

+ (double)divide:(double)a by:(double)b {
    if (b == 0) {
        NSLog(@"Error: Division by zero");
        return 0; // Handle division by zero
    }
    return a / b;
}

+ (double)sine:(double)value {
    return sin(value);
}

+ (double)cosine:(double)value {
    return cos(value);
}

+ (double)tangent:(double)value {
    return tan(value);
}

@end

