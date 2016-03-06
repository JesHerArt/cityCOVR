//
//  ViewController.m
//  cityCOVR
//
//  Created by Jessica Hernandez on 3/5/16.
//  Copyright © 2016 Mango Hackers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize signInFbBtn, backgroundImage, emailField, passwordField, logInFbBtn, okayBtn, noAllowBtn, homeBtn, rentBtn, mapBtn, settingsBtn, checkoutBtn, returnBtn1, returnBtn2, fbLogoutBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    loggedin = false;
    rented = false;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//used to dismiss the keyboard when touching outside a text field.
-(void)dismissKeyboard {
    [emailField resignFirstResponder];
    [passwordField resignFirstResponder];
}


//method needed to dismiss ketboard upon return key press on the keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)fbSignIn:(id)sender {
    backgroundImage.image = [UIImage imageNamed:@"3.png"];
    [signInFbBtn setHidden:YES];
    
    [logInFbBtn setHidden:NO];
    [emailField setHidden:NO];
    [passwordField setHidden:NO];
}

- (IBAction)fbLogIn:(id)sender {
    backgroundImage.image = [UIImage imageNamed:@"4.png"];
    [logInFbBtn setHidden:YES];
    [emailField setHidden:YES];
    [passwordField setHidden:YES];
    
    [emailField resignFirstResponder];
    [passwordField resignFirstResponder];
    
    [okayBtn setHidden:NO];
    [noAllowBtn setHidden:NO];
}

- (IBAction)okayBtnClick:(id)sender {
    backgroundImage.image = [UIImage imageNamed:@"5.png"];
    [okayBtn setHidden:YES];
    [noAllowBtn setHidden:YES];
    
    loggedin = true;
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
}

- (IBAction)noAllowBtnClick:(id)sender {
    backgroundImage.image = [UIImage imageNamed:@"2.png"];
    [okayBtn setHidden:YES];
    [noAllowBtn setHidden:YES];
    
    loggedin = false;
    
    [signInFbBtn setHidden:NO];
}

- (IBAction)homeClick:(id)sender {
    
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    [returnBtn1 setHidden:YES];
    [returnBtn2 setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    if (rented) {
        backgroundImage.image = [UIImage imageNamed:@"10.png"];
    } else {
        backgroundImage.image = [UIImage imageNamed:@"5.png"];
    }
    
}

- (IBAction)rentClick:(id)sender {
    
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    [checkoutBtn setHidden:YES];
    
    [returnBtn1 setHidden:YES];
    [returnBtn2 setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    if (rented) {
        backgroundImage.image = [UIImage imageNamed:@"11.png"];
        [returnBtn2 setHidden:NO];
    } else {
        backgroundImage.image = [UIImage imageNamed:@"6.png"];
        [checkoutBtn setHidden:NO];
    }
}

- (IBAction)mapClick:(id)sender {
    
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    [checkoutBtn setHidden:YES];
    
    [returnBtn1 setHidden:YES];
    [returnBtn2 setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    backgroundImage.image = [UIImage imageNamed:@"8.png"];
}

- (IBAction)settingsClick:(id)sender {
    
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    [checkoutBtn setHidden:YES];
    
    [returnBtn1 setHidden:YES];
    [returnBtn2 setHidden:YES];
    
    backgroundImage.image = [UIImage imageNamed:@"9.png"];
    
    [fbLogoutBtn setHidden:NO];
}

- (IBAction)checkoutClick:(id)sender {
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    [checkoutBtn setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    rented = true;
    
    [returnBtn1 setHidden:NO];
    [returnBtn2 setHidden:YES];
    
    backgroundImage.image = [UIImage imageNamed:@"7.png"];
}

- (IBAction)returnBtnClick1:(id)sender {
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    rented = false;
    
    [returnBtn1 setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    backgroundImage.image = [UIImage imageNamed:@"5.png"];
}

- (IBAction)returnBtnClick2:(id)sender {
    [homeBtn setHidden:NO];
    [rentBtn setHidden:NO];
    [mapBtn setHidden:NO];
    [settingsBtn setHidden:NO];
    
    rented = false;
    
    [returnBtn2 setHidden:YES];
    [fbLogoutBtn setHidden:YES];
    
    backgroundImage.image = [UIImage imageNamed:@"5.png"];
}

- (IBAction)fbLogoutClick:(id)sender {
    [homeBtn setHidden:YES];
    [rentBtn setHidden:YES];
    [mapBtn setHidden:YES];
    [settingsBtn setHidden:YES];
    
    [signInFbBtn setHidden:NO];
    
    backgroundImage.image = [UIImage imageNamed:@"2.png"];
    
    loggedin = false;
    
    [fbLogoutBtn setHidden:YES];
}



@end
