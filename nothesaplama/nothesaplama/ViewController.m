//
//  ViewController.m
//  nothesaplama
//
//  Created by 2015 on 9.09.2015.
//  Copyright (c) 2015 2015. All rights reserved.
//

#import "ViewController.h"
#import "SonucVC.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"HESAPLA"]) {
        UINavigationController *destination = (UINavigationController*)segue.destinationViewController;
        
        SonucVC *vc = (SonucVC*)destination.topViewController;
        [vc setSonucTr:_myValue];
        [vc setSonucMat:_myValue2];
        [vc setSonucSos:_myValue3];
        [vc setSonucFen:_myValue4];
        
        
    }
}


-(double)trDogru :(double)sayi1 trYanlis :(double)sayi2{
    return sayi1 - (sayi2 * 0.25);
}
-(double)matDogru :(double)sayi1 matYanlis :(double)sayi2{
    return sayi1 - (sayi2 * 0.25);
}
-(double)sosDogru :(double)sayi1 sosYanlis :(double)sayi2{
    return sayi1 - (sayi2 * 0.25);
}
-(double)fenDogru :(double)sayi1 fenYanlis :(double)sayi2{
    return sayi1 - (sayi2 * 0.25);
}



-(double)textIlkSayi:(NSString*)ilk {
    
    
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *ilkSayi = [f numberFromString:ilk];
    
    return [ilkSayi doubleValue];
   
    
    
}

-(double)textIkinciSayi:(NSString *)ikinci {
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *ikinciSayi = [f numberFromString:ikinci];
    
    
    return [ikinciSayi doubleValue];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButton:(id)sender {
    
    _ilkSayi = [self textIlkSayi:_trDogru.text];
    _ikinciSayi = [self textIkinciSayi:_trYanlis.text];
    
    _ilkSayi2 = [self textIlkSayi:_matDogru.text];
    _ikinciSayi2 = [self textIkinciSayi:_trYanlis.text];
    
    _ilkSayi3 = [self textIlkSayi:_sosDogru.text];
    _ikinciSayi3= [self textIkinciSayi:_trYanlis.text];
    
    _ilkSayi4 = [self textIlkSayi:_fenDogru.text];
    _ikinciSayi4 = [self textIkinciSayi:_trYanlis.text];
    
    
    _myValue = [self trDogru:_ilkSayi trYanlis:_ikinciSayi];
    _myValue2 = [self matDogru:_ilkSayi2 matYanlis:_ikinciSayi2];
    _myValue3 = [self sosDogru:_ilkSayi3 sosYanlis:_ikinciSayi3];
    _myValue4 = [self fenDogru:_ilkSayi4 fenYanlis:_ikinciSayi4];
    
    
    if([_trDogru.text isEqualToString:@""] || [_trYanlis.text isEqualToString: @"" ]|| [_matDogru.text isEqualToString:@""] || [_matYanlis.text isEqualToString:@""]||[_sosDogru.text isEqualToString:@""]||[_sosYanlis.text isEqualToString:@""]||[_fenDogru.text isEqualToString:@""]||[_fenYanlis.text isEqualToString:@""] ){
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hata" message:@"lütfen tüm alanları doldurunuz" delegate:self cancelButtonTitle:@"TAMAM" otherButtonTitles:nil];
        
        [alert show];
        
        _matDogru.text = @"";
        _matYanlis.text = @"";
        _trYanlis.text = @"";
        _trDogru.text = @"";
        _sosDogru.text = @"";
        _sosYanlis.text = @"";
        _fenDogru.text = @"";
        _fenYanlis.text = @"";
    }
    
    
    
    if(_ilkSayi + _ikinciSayi > 25 || _ilkSayi2 + _ikinciSayi2 > 25 ||
       _ilkSayi3 + _ikinciSayi3 > 25 || _ilkSayi4 + _ikinciSayi4 > 25
       ){
    
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hata" message:@"25 den büyük değer girilemez" delegate:self cancelButtonTitle:@"TAMAM" otherButtonTitles:nil];
            
            [alert show];
        
            _matDogru.text = @"";
            _matYanlis.text = @"";
            _trYanlis.text = @"";
            _trDogru.text = @"";
            _sosDogru.text = @"";
            _sosYanlis.text = @"";
            _fenDogru.text = @"";
            _fenYanlis.text = @"";
            
        
    }
    

}
@end
