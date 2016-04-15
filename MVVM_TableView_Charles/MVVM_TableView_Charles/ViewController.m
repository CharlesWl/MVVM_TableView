//
//  ViewController.m
//  MVVM_TableView_Charles
//
//  Created by charles on 16/4/12.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDelegateDataSourceModel.h"
#import "MyCell.h"
#import "MyObj.h"
#import "UITableViewCell+Extension.h"

#define myCellIdentifier @"MyCell"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *list ;
@property (weak, nonatomic) IBOutlet UITableView *WlTableView;
@property (nonatomic, strong) TableViewDelegateDataSourceModel *tvModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  测试上传工程
     */
    self.WlTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tvModel = [[TableViewDelegateDataSourceModel alloc]init];
    self.tvModel.items = self.list;
    self.tvModel.cellIdentifier = myCellIdentifier;
    
    //tableview设置
    self.tvModel.configureCellBlock = ^(NSIndexPath *indexPath, MyObj *obj, UITableViewCell *cell) {
        [cell configure:cell customObj:obj indexPath:indexPath];
    };
    //cell高度
    self.tvModel.heightConfigureBlock = ^CGFloat(NSIndexPath *indexPath, MyObj *obj) {
        return [MyCell getCellHeightWithCustomObj:obj indexPath:indexPath];
    };
    //cell点击方法
    self.tvModel.didSelectCellBlock = ^(NSIndexPath *indexPath,MyObj *obj) {
        NSLog(@"click row : %@",@(indexPath.row)) ;
    };
    //签协议
    [self.tvModel handleTableViewDatasourceAndDelegate:self.WlTableView];
    
}
/**
 *  数据
 *
 *  @return 返回数据
 */
- (NSMutableArray *)list {
    if (!_list) {
        _list = [NSMutableArray arrayWithCapacity:1];
        
        for (int i = 0; i < 10 ; i++) {
            MyObj *obj = [[MyObj alloc]init];
            obj.name = [NSString stringWithFormat:@"my name is : %d",i] ;
            obj.height = 50 + i * 5 ;
            [_list addObject:obj] ;
        }
    }
    return _list;
}
@end
