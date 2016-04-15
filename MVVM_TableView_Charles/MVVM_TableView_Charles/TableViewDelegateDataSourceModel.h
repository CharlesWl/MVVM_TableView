//
//  TableViewDelegateDataSourceModel.h
//  MVVM_TableView_Charles
//
//  Created by charles on 16/4/12.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  tableview协议block
 *
 *  @param indexPath Cell行列
 *  @param item      数据类型
 *  @param cell      Cell
 */
typedef void (^TableViewCellConfigureBlock)(NSIndexPath *indexPath, id item, UITableViewCell *cell);

/**
 *  Cell的高度Block
 *
 *  @param indexPath Cell行列
 *  @param item      数据类型
 *
 *  @return 返回Cell高度
 */
typedef CGFloat (^CellHeightBlock)(NSIndexPath *indexPath, id item);

/**
 *  Cell点击事件Block
 *
 *  @param indexPath Cell行列
 *  @param item      数据类型
 */
typedef void (^DidSetectCellBlock)(NSIndexPath *indexPath, id item);


@interface TableViewDelegateDataSourceModel : NSObject <UITableViewDelegate,UITableViewDataSource>
/**
 *  数据数组
 */
@property (nonatomic, strong) NSArray *items ;
/**
 *  cell identifier
 */
@property (nonatomic, copy) NSString *cellIdentifier ;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock ;
@property (nonatomic, copy) CellHeightBlock heightConfigureBlock ;
@property (nonatomic, copy) DidSetectCellBlock didSelectCellBlock ;
/**
 *  tableview签协议方法
 *
 *  @param tableView 传入Tableview
 */
- (void)handleTableViewDatasourceAndDelegate:(UITableView *)tableView;
@end
