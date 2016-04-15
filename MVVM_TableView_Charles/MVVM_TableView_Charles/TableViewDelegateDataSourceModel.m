//
//  TableViewDelegateDataSourceModel.m
//  MVVM_TableView_Charles
//
//  Created by charles on 16/4/12.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "TableViewDelegateDataSourceModel.h"
#import "UITableViewCell+Extension.h"


@implementation TableViewDelegateDataSourceModel
/**
 *  签协议方法
 *
 *  @param tableView
 */
- (void)handleTableViewDatasourceAndDelegate:(UITableView *)tableView {
    tableView.delegate = self;
    tableView.dataSource = self;
}

#pragma mark - UITableViewDataSource -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = self.items[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    if (cell == nil) {
        [UITableViewCell registerTable:tableView nibIdentifier:self.cellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    }
    self.configureCellBlock(indexPath, item, cell);
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = self.items[indexPath.row];
    return self.heightConfigureBlock(indexPath, item);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = self.items[indexPath.row];
    self.didSelectCellBlock(indexPath, item);
}

@end
