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

- (void)setTabBarVisible:(BOOL)visible animated:(BOOL)animated completion:(void (^)(BOOL))completion {

    if ([self tabBarIsVisible] == visible) return (completion)? completion(YES) : nil;

    CGRect frame = self.tabBarController.tabBar.frame;
    CGFloat height = frame.size.height;
    CGFloat offsetY = (visible)? -height : height;

    CGFloat duration = (animated)? 0.05 : 0.0;

    [UIView animateWithDuration:duration animations:^{
        self.tabBarController.tabBar.frame = CGRectOffset(frame, 0, offsetY);
    } completion:completion];
}

- (BOOL)tabBarIsVisible {
    return self.tabBarController.tabBar.frame.origin.y < CGRectGetMaxY(self.view.frame);
}

- (IBAction)pressedButton:(id)sender {
    [self setTabBarVisible:![self tabBarIsVisible] animated:YES completion:^(BOOL finished) {
//        NSLog(@"finished");
    }];
}
@end


