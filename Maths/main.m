//
//  main.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChar[255];
        
        fgets(inputChar, 255, stdin);
        NSString *inputString = [[NSString stringWithCString:inputChar
                                                    encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        NSNumber *typedNumber = [formatter numberFromString:inputString];
        
        NSInteger number;
        if(typedNumber == nil){
            NSLog(@"Wrong number. I cannot convert!");
           // continue;
        } else {
            number = [typedNumber integerValue];
        }
        
    }
    return 0;
}
