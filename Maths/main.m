//
//  main.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BOOL gameON = YES;
        while (gameON) {
            
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [question question]);
            NSString *inputString = [InputHandler stringFromInput];
            
            if([inputString isEqualToString: @"quit"]){
                gameON = NO;
            } else {
            
                NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                NSNumber *typedNumber = [formatter numberFromString:inputString];
                
                NSInteger number;
                if(typedNumber == nil){
                    NSLog(@"Wrong number. I cannot convert!");
                     continue;
                } else {
                    number = [typedNumber integerValue];
                    if(number == [question answer]){
                        NSLog(@"%@", @"Right");
                    } else {
                        NSLog(@"%@", @"Wrong");
                    }
                }
            }
        }
        NSLog(@"%@", @"Bye");
    }
    return 0;
}
