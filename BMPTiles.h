//
//  BMPTiles.h
//  Pirate Game
//
//  Created by Bruno Macedo Pasini on 11/04/14.
//
//

#import <Foundation/Foundation.h>
#import "BMPWeapon.h"
#import "BMPArmor.h"

@interface BMPTiles : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) BMPWeapon *weapon;
@property (strong, nonatomic) BMPArmor *armor;
@property (nonatomic) int healthEffect;

@end
