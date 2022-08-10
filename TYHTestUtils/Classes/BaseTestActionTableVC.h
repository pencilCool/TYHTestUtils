//
//  BaseActionTableVC.h
//  SanyLocalPodDemo
//
//  Created by yuhua Tang on 2021/9/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTestActionTableVC : UITableViewController
- (void)addCell:(NSString *)title action:(void(^)(void))action;
@end

NS_ASSUME_NONNULL_END
