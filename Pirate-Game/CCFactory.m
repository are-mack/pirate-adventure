//
//  CCFactory.m
//  Pirate-Game
//
//  Created by McCawley on 7/7/14.
//  Copyright (c) 2014 Ryan McCawley. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"A DOCK. (1) You disembark from your boat, the Sea-Bitch.  You're on the lookout for Capt. Wild Bill.";
    tile1.backgroundImage = [UIImage imageNamed:@"pirate-dock.jpg"];
    CCWeapon *bluntedWeapon = [[CCWeapon alloc] init];
    bluntedWeapon.name = @"Blunted Sword";
    bluntedWeapon.damage = 12;
    tile1.weapon = bluntedWeapon;
    tile1.actionButtonName = @"Take the sword";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"A TAVERN. (2) There are some drunks and a decent set of armor here.";
    tile2.backgroundImage = [UIImage imageNamed:@"pirate-tavern.jpg"];
    CCArmor *steelArmor = [[CCArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take the armor";
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"OLD MAID'S FRONT DOOR. (3)  She offers you some hot Coco. Looks like you need it.";
    tile3.backgroundImage = [UIImage imageNamed:@"pirate-maid.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Take the Hot Coco";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"THE SEA CEMETARY. (4) You start rooting through open graves, and just as you start to feel uncomfortable, you find something amazing.";
    tile4.backgroundImage = [UIImage imageNamed:@"pirate-cemetary.jpg"];
    CCArmor *boneArmor = [[CCArmor alloc] init];
    boneArmor.name = @"Bone Armor";
    boneArmor.health = 26;
    tile4.armor = boneArmor;
    tile4.actionButtonName = @"Pick up Bone Armor";
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"THE BAIT STORE (5) Walter the bait store owner is here and he slaps you with a fish!";
    tile5.backgroundImage = [UIImage imageNamed:@"pirate-bait.jpg"];
    tile5.healthEffect = -9;
    tile5.actionButtonName = @"Giggle at Walter";

    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"SCULLERY (6) You don't belong back here, you slip in dishwater that was left on the floor";
    tile6.backgroundImage = [UIImage imageNamed:@"pirate-scullery.jpg"];
    tile6.healthEffect = -11;
    tile6.actionButtonName = @"Walk to sink";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"BLACKSMITH (7)";
    tile7.backgroundImage = [UIImage imageNamed:@"pirate-blacksmith.jpg"];
    CCWeapon *longClawWeapon = [[CCWeapon alloc] init];
    longClawWeapon.name = @"Long Claw";
    longClawWeapon.damage = 30;
    tile7.weapon = longClawWeapon;
    tile7.actionButtonName = @"Castle Forged, Basta'd!";
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"ARMORER (8)";
    tile8.backgroundImage = [UIImage imageNamed:@"pirate-armor.jpg"];
    CCArmor *silkArmor = [[CCArmor alloc] init];
    silkArmor.name = @"Silk Robes";
    silkArmor.health = 90;
    tile8.armor = silkArmor;
    tile8.actionButtonName = @"o0o0o this looks fancy.";
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"WILD BILL (9)";
    tile9.backgroundImage = [UIImage imageNamed:@"pirate-boss.jpg"];
    tile9.healthEffect = -15;
    tile9.actionButtonName = @"It's Wild Bill! Stop him!";

    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"PARROT AVIARY (10) Who needs this many fucking birds?";
    tile10.backgroundImage = [UIImage imageNamed:@"pirate-parrots.jpg"];
    CCArmor *parrotArmor = [[CCArmor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 30;
    tile10.armor = parrotArmor;
    tile10.actionButtonName = @"Snatch up a Parrot";
    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"ANTIDOTES (11) Just drink one and see what happens";
    tile11.backgroundImage = [UIImage imageNamed:@"pirate-potions.jpg"];
    tile11.healthEffect = 120;
    tile11.actionButtonName = @"GLUG GLUG";

    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"MERMAIDS (12) These bitches are CRAZY. They pull you under water.";
    tile12.backgroundImage = [UIImage imageNamed:@"pirate-sunset.jpg"];
    tile12.healthEffect = -60;
    tile12.actionButtonName = @"GLUG GLUG";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;

    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(CCBoss *)boss
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end