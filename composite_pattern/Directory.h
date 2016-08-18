//
//  Directory.h
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "SystemComponent.h"
/**
 Composite: представляет компонент, который может содержать другие компоненты и реализует механизм для их добавления и удаления
 */
@interface Directory : SystemComponent

@property (strong, nonatomic) NSMutableArray *components;

- (void) addComponent:(SystemComponent *)component;
- (void) removeComponent:(SystemComponent *)component;
- (void) printData;

@end
