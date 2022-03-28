//
//  TabBarViewController.m
//  Application(TabBar and TableViewCell in objC)
//
//  Created by XORGeek New on 28/Mar/22.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController
@synthesize userInterfaceScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];

    [userInterfaceScrollView setScrollEnabled:YES];
    [userInterfaceScrollView setContentSize:CGSizeMake(350, 700)];
    
    self.tabBarController.tabBar.hidden= YES;
}
@end


