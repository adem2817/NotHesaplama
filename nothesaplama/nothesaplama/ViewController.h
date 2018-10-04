//
//  ViewController.h
//  nothesaplama
//
//  Created by 2015 on 9.09.2015.
//  Copyright (c) 2015 2015. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) double ilkSayi;
@property (nonatomic) double ikinciSayi;

@property (nonatomic) double ilkSayi2;
@property (nonatomic) double ikinciSayi2;

@property (nonatomic) double ilkSayi3;
@property (nonatomic) double ikinciSayi3;

@property (nonatomic) double ilkSayi4;
@property (nonatomic) double ikinciSayi4;

@property (nonatomic) double myValue;
@property (nonatomic) double myValue2;
@property (nonatomic) double myValue3;
@property (nonatomic) double myValue4;



@property (weak, nonatomic) IBOutlet UITextField *trDogru;

@property (weak, nonatomic) IBOutlet UITextField *trYanlis;

@property (weak, nonatomic) IBOutlet UITextField *matDogru;

@property (weak, nonatomic) IBOutlet UITextField *matYanlis;

@property (weak, nonatomic) IBOutlet UITextField *sosDogru;

@property (weak, nonatomic) IBOutlet UITextField *sosYanlis;

@property (weak, nonatomic) IBOutlet UITextField *fenDogru;

@property (weak, nonatomic) IBOutlet UITextField *fenYanlis;




- (IBAction)myButton:(id)sender;



@end

