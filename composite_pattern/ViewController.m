//
//  ViewController.m
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"

#import "Composite.h"
#import "Leaf.h"

#import "Directory.h"
#import "File.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //test base
    
//    Component *root = [[Composite alloc] initWithName:@"Root"];
//    Component *leaf = [[Leaf alloc] initWithName:@"Leaf"];
//    Composite *subtree = [[Composite alloc] initWithName:@"Subtree"];
//    
//    [root addComponent:leaf];
//    [root addComponent:subtree];
//    [root display];
    
    //test file system
    
    SystemComponent *fileSystem = [[Directory alloc] initWithName:@"Custom File System"];
    
    SystemComponent *windowsDiskC = [[Directory alloc] initWithName:@"Disk C"];
    
    SystemComponent *pngFile = [[File alloc] initWithName:@"blablabla.png"];
    
    SystemComponent *docFile = [[File alloc] initWithName:@"contscts.doc"];
    
    
    //добавление файлов на диск
    [windowsDiskC addComponent:pngFile];
    [windowsDiskC addComponent:docFile];
    
    //монтируем диск в файловую систему
    [fileSystem addComponent:windowsDiskC];
    
    //вывод всех данных о файловых системах
    [fileSystem printData];
    
    
    NSLog(@"================================");
    
    //удаление с диска файла
    [fileSystem removeComponent:pngFile];
    
    
    //создание новой папки
    SystemComponent *docsFolder = [[Directory alloc] initWithName:@"Мои документы"];
    
    //добавление в созданную папку файлов
    SystemComponent *txtFile = [[File alloc] initWithName:@"ReadMe.txt"];
    
    SystemComponent *cssFile = [[File alloc] initWithName:@"test.css"];
    
    [docsFolder addComponent:txtFile];
    [docsFolder addComponent:cssFile];
    
    [windowsDiskC addComponent:docsFolder];
    
    [fileSystem printData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
