//
//  WLPersonViewModel.m
//  Simple_MVVM_Charles
//
//  Created by charles on 16/4/1.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "WLPersonViewModel.h"

@implementation WLPersonViewModel
- (void)setPersonModel:(WLPerson *)personModel {
    _personModel = personModel;
    _personNameText = [NSString stringWithFormat:@"Name：%@",personModel.personName];
    if (personModel.personSex) {
        _personSexText = @"Sex：Male";
    } else {
        _personSexText = @"Sex：Female";
    }
    _personPhoneNumtext = [NSString stringWithFormat:@"Phone：%ld",personModel.personPhoneNum];
}
@end
