//
//  BMPCharacter.h
//  Pirate Game
//
//  Created by Bruno Macedo Pasini on 12/04/14.
//
//

#import <Foundation/Foundation.h>
#import "BMPArmor.h"
#import "BMPWeapon.h"

@interface BMPCharacter : NSObject

@property (strong,nonatomic) BMPArmor *armor;
@property (nonatomic) int health;

@property (strong,nonatomic) BMPWeapon *weapon;
@property (nonatomic) int damage;

@end
