//
//  TYHViewController.m
//  TYHTestUtils
//
//  Created by pencilCool on 08/10/2022.
//  Copyright (c) 2022 pencilCool. All rights reserved.
//

#import "TYHViewController.h"

@interface TYHViewController ()

@end

@implementation TYHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self addCell:@"test1" action:^{
        NSLog(@"action1");
    }];
    
    [self addCell:@"test2" action:^{
        NSLog(@"action2");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
