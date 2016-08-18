//
//  Directory.m
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Directory.h"

@implementation Directory

- (instancetype) initWithName:(NSString *)name {
    
    self = [super init];
    
    if (self) {
        
        self.name = name;
        _components = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) addComponent:(SystemComponent *)component {

    [_components addObject:component];
}


- (void) removeComponent:(SystemComponent *)component {

    [_components removeObject:component];
}


- (void) printData {

    NSLog(@"Root: %@", self.name);
    
    NSLog(@"Subroots:");
    
    for (SystemComponent *component in _components) {
        [component printData];
    }

}


@end
