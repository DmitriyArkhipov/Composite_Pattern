//
//  Composite.h
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"
/**
 Composite: представляет компонент, который может содержать другие компоненты и реализует механизм для их добавления и удаления
 */
@interface Composite : Component

@property (strong, nonatomic) NSMutableArray *children;

- (instancetype) initWithName:(NSString *)name;

- (void) display;
- (void) addComponent:(Component *)component;
- (void) removeComponent:(Component *)component;

@end
