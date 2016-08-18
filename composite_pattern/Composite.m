//
//  Composite.m
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Composite.h"

@implementation Composite


- (instancetype) initWithName:(NSString *)name {
    
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] init];
        self.name = name;
    }
    
    return self;
}

- (void) display {
    
    NSLog(@"Composite name: %@", self.name);
    
    for (Component *component in _children) {
        [component display];
    }
}
- (void) addComponent:(Component *)component {
    
    [_children addObject:component];
    
}
- (void) removeComponent:(Component *)component {
    
    [_children removeObject:component];
}

@end
