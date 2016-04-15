//
//  UITableViewCell+Extension.h
//  MVVM_TableView_Charles
//
//  Created by charles on 16/4/12.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Extension)

+ (void)registerTable:(UITableView *)table
        nibIdentifier:(NSString *)identifier ;

- (void)configure:(UITableViewCell *)cell
        customObj:(id)obj
        indexPath:(NSIndexPath *)indexPath ;

+ (CGFloat)getCellHeightWithCustomObj:(id)obj
                            indexPath:(NSIndexPath *)indexPath ;
@end
