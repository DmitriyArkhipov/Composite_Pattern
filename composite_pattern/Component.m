//
//  Component.m
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Component.h"

@implementation Component

- (instancetype) initWithName:(NSString *)name {
    
    self = [super init];
    
    if (self) {
        _name = name;
    }

    return self;
}

#pragma mark - Abstract methods implemented in child class

- (void) display {}
- (void) addComponent:(Component *)component {}
- (void) removeComponent:(Component *)component {}

@end
