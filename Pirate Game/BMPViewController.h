//
//  BMPViewController.h
//  Pirate Game
//
//  Created by Bruno Macedo Pasini on 11/04/14.
//
//

#import <UIKit/UIKit.h>
#import "BMPCharacter.h"
#import "BMPBoss.h"

@interface BMPViewController : UIViewController

//Variables
@property (strong, nonatomic) NSArray *tiles;
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) BMPCharacter *character;
@property (strong, nonatomic) BMPBoss *boss;

//Outlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

//Buttons
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)resetButton:(UIButton *)sender;

@end
