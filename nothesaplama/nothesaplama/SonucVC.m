//
//  SonucVC.m
//  
//
//  Created by 2015 on 9.09.2015.
//
//

#import "SonucVC.h"

@interface SonucVC ()

@end

@implementation SonucVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _trNet.text = [NSString stringWithFormat:@" %.02f ", _sonucTr];
    _matNet.text = [NSString stringWithFormat:@" %.02f ",_sonucMat ];
    _sosNet.text = [NSString stringWithFormat:@" %.02f ",_sonucSos];
    _fenNet.text = [NSString stringWithFormat:@" %.02f ",_sonucFen ];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
