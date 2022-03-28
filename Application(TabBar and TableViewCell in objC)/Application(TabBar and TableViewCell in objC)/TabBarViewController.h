//
//  TabBarViewController.h
//  Application(TabBar and TableViewCell in objC)
//
//  Created by XORGeek New on 28/Mar/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabBarViewController : UITabBarController

@property(nonatomic, readonly, retain) UITabBarController *tabBarController;
@property (weak, nonatomic) IBOutlet UIScrollView *userInterfaceScrollView;


NS_ASSUME_NONNULL_END
@end
