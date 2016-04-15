//
//  WLPersonViewModel.h
//  Simple_MVVM_Charles
//
//  Created by charles on 16/4/1.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLPerson.h"
@interface WLPersonViewModel : NSObject
@property (nonatomic, strong) WLPerson *personModel;
@property (nonatomic, copy) NSString *personNameText;
@property (nonatomic, copy) NSString *personSexText;
@property (nonatomic, copy) NSString *personPhoneNumtext;
@end
