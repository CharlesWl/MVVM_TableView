//
//  ViewController.m
//  Simple_MVVM_Charles
//
//  Created by charles on 16/4/1.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "ViewController.h"
#import "WLPerson.h"
#import "WLPersonViewModel.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sexLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WLPerson *person = [[WLPerson alloc]init];
    person.personName = @"Charles_Wl";
    person.personPhoneNum = 18939963309;
    person.personSex = 1;
    WLPersonViewModel *personVM = [[WLPersonViewModel alloc]init];
    personVM.personModel = person;
    self.nameLabel.text = personVM.personNameText;
    self.phoneLabel.text = personVM.personPhoneNumtext;
    self.sexLabel.text = personVM.personSexText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
