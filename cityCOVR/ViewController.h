//
//  ViewController.h
//  cityCOVR
//
//  Created by Jessica Hernandez on 3/5/16.
//  Copyright © 2016 Mango Hackers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL loggedin;
    BOOL rented;
}

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UIButton *signInFbBtn;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UIButton *logInFbBtn;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *okayBtn;
@property (weak, nonatomic) IBOutlet UIButton *noAllowBtn;
@property (weak, nonatomic) IBOutlet UIButton *homeBtn;
@property (weak, nonatomic) IBOutlet UIButton *rentBtn;
@property (weak, nonatomic) IBOutlet UIButton *mapBtn;
@property (weak, nonatomic) IBOutlet UIButton *settingsBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkoutBtn;
@property (weak, nonatomic) IBOutlet UIButton *returnBtn1;
@property (weak, nonatomic) IBOutlet UIButton *returnBtn2;
@property (weak, nonatomic) IBOutlet UIButton *fbLogoutBtn;


- (IBAction)fbSignIn:(id)sender;
- (IBAction)fbLogIn:(id)sender;
- (IBAction)okayBtnClick:(id)sender;
- (IBAction)noAllowBtnClick:(id)sender;
- (IBAction)homeClick:(id)sender;
- (IBAction)rentClick:(id)sender;
- (IBAction)mapClick:(id)sender;
- (IBAction)settingsClick:(id)sender;
- (IBAction)checkoutClick:(id)sender;
- (IBAction)returnBtnClick1:(id)sender;
- (IBAction)returnBtnClick2:(id)sender;
- (IBAction)fbLogoutClick:(id)sender;



//method to dismiss keyboard on return
- (BOOL) textFieldShouldReturn:(UITextField *)textField;

@end

