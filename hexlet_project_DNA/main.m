//
//  main.c
//  hexlet_project_DNA
//
//  Created by Igor Smirnov on 30.10.12.
//  Copyright (c) 2012 Igor Smirnov. All rights reserved.
//

#include <stdio.h>
#import "Cell.h"

int main(int argc, const char * argv[])
{
    Cell *c1, *c2; // наши ДНК
    int len = 100; // и их длина
    
    // создаем пару
    c1 = [[Cell alloc] initWithLength: len];
    c2 = [[Cell alloc] initWithLength: len];
    
    // выводим
    NSLog(@"DNA1: %@", c1);
    NSLog(@"DNA2: %@", c2);
    NSLog(@"hammingDistance: %d", [c1 hammingDistance: c2]);
    
    int X = 30; // % мутации

    // мутируем
    [c1 mutate: X];
    [c2 mutate: X];
    
    // результат
    NSLog(@"DNA1: %@", c1);
    NSLog(@"DNA2: %@", c2);
    NSLog(@"hammingDistance: %d", [c1 hammingDistance: c2]);

    return 0;
}

