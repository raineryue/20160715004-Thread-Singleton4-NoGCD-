//
//  ViewController.m
//  20160715004-Thread-Singleton4(NoGCD)
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "RYPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RYPerson *person1 = [RYPerson sharedInstance];
    RYPerson *person2 = [RYPerson sharedInstance];
    RYPerson *person3 = [RYPerson sharedInstance];
 
    NSLog(@"%@ %@ %@", person1, person2, person3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
