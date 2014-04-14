//
//  BMPFactory.h
//  Pirate Game
//
//  Created by Bruno Macedo Pasini on 11/04/14.
//
//

#import <Foundation/Foundation.h>
#import "BMPCharacter.h"
#import "BMPBoss.h"

@interface BMPFactory : NSObject

-(NSArray *)tiles;
-(BMPCharacter *)character;
-(BMPBoss *)boss;

@end
