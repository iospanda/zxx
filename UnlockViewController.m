//
//  UnlockViewController.m
//  domain
//
//  Created by 钟霄雄 on 13-3-29.
//  Copyright (c) 2013年 ename. All rights reserved.
//

#import "UnlockViewController.h"
#import "UnlockView.h"
@interface UnlockViewController ()<UnlockViewDelegate>

@end

@implementation UnlockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loadView{
    UIView* v = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    v.backgroundColor = [UIColor clearColor];
    self.view = v;
    [v release];
    
    
    UIImageView *bgView = [[UIImageView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [bgView setImage:[UIImage imageNamed:@"general_bg@2x.png"]];
    [self.view addSubview:bgView];
    [bgView release];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showNavBackButton];
    
    UnlockView *l = [[UnlockView alloc] initWithFrame:self.view.frame];
    l.delegate = self;
    [self.view addSubview:l];
    [l release];
	// Do any additional setup after loading the view.
}


-(void)unlockerView:(UnlockView *)unlockView didFinished:(NSArray *)points{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
