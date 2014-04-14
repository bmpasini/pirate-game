//
//  BMPFactory.m
//  Pirate Game
//
//  Created by Bruno Macedo Pasini on 11/04/14.
//
//

#import "BMPFactory.h"
#import "BMPTiles.h"

@implementation BMPFactory

-(NSArray *)tiles
{
    
    BMPTiles *tile1 = [[BMPTiles alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = @"Take the sword";
    BMPWeapon *bluntedSword = [[BMPWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    
    BMPTiles *tile2 = [[BMPTiles alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.actionButtonName = @"Take armor";
    BMPArmor *steelArmor = [[BMPArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 10;
    tile2.armor = steelArmor;
    
    BMPTiles *tile3 = [[BMPTiles alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.actionButtonName = @"Stop at the dock";
    tile3.healthEffect = 12;
    
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    BMPTiles *tile4 = [[BMPTiles alloc] init];
    tile4.story = @"You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt Parrot";
    BMPArmor *parrotArmor = [[BMPArmor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.armor = parrotArmor;
    
    BMPTiles *tile5 = [[BMPTiles alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Take the pistol";
    BMPWeapon *pistolWeapon = [[BMPWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    
    BMPTiles *tile6 = [[BMPTiles alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.actionButtonName = @"Show no fear";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];

    BMPTiles *tile7 = [[BMPTiles alloc] init];
    tile7.story = @"You sight a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.actionButtonName = @"Fight those scum";
    tile7.healthEffect = 8;
    
    BMPTiles *tile8 = [[BMPTiles alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.actionButtonName = @"Abandon ship";
    tile8.healthEffect = -47;
    
    BMPTiles *tile9 = [[BMPTiles alloc] init];
    tile9.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.actionButtonName = @"Take treasurer";
    tile9.healthEffect = 20;
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];

    BMPTiles *tile10 = [[BMPTiles alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.actionButtonName = @"Repel the invaders";
    tile10.healthEffect = -15;
    
    BMPTiles *tile11 = [[BMPTiles alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.actionButtonName = @"Swim deeper";
    tile11.healthEffect = -7;
    
    BMPTiles *tile12 = [[BMPTiles alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.actionButtonName = @"Show who is the boss";
    tile12.healthEffect = -15;
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];

    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];

    return tiles;
    
}

-(BMPCharacter *)character
{
    BMPCharacter *character = [[BMPCharacter alloc] init];
    character.health = 100;
    
    BMPArmor *armor = [[BMPArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    BMPWeapon *weapon = [[BMPWeapon alloc] init];
    weapon.name = @"Furious Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(BMPBoss *)boss
{
    BMPBoss *boss = [[BMPBoss alloc] init];
    boss.health = 65;
    
    return boss;
}
    

@end
