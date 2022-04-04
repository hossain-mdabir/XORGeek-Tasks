//
//  ViewController.m
//  Application(Hide Tab Bar)
//
//  Created by XORGeek New on 29/Mar/22.
//
//
//  ViewController.m
//  Tab bar hidden
//
//  Created by XORGeek New on 28/Mar/22.
//

#import "ViewController.h"
//#import <UIKit/UIKit.h>
//#import "ScrollViewController.h"
//#import "CustomCell.h"

@interface ViewController ()
//@property (strong, nonatomic) NSMutableArray* arrayData;
@end

@implementation ViewController
//@synthesize userInterfaceScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
//    [userInterfaceScrollView setScrollEnabled:YES];
//    [userInterfaceScrollView setContentSize:CGSizeMake(350, 1200)];
    
//    CustomCell* cell1 = [[CustomCell alloc]init];
//    cell1.stringImage = @"img";
//    cell1.stringLabel1 = @"img";
//    cell1.stringLabel2 = @"img";
    
    //    self.tabBarController.tabBar.hidden = YES;
}
//-(void) viewWillAppear:(BOOL)animated
//{
//    if (self.tabBarController.tabBar.hidden == YES) {
//        self.tabBarController.tabBar.hidden = NO;
//
//    }
////        self.tabBarController.tabBar.hidden = NO;
//
////    [self.tabBarController.tabBar setHidden: YES];
//}
//
//-(void) viewWillDisappear:(BOOL)animated
//{
//    if (self.tabBarController.tabBar.hidden == NO) {
//        self.tabBarController.tabBar.hidden = YES;
//    }
//
////    [self.tabBarController.tabBar setHidden: YES];
//}
- (void)setTabBarVisible:(BOOL)visible animated:(BOOL)animated completion:(void (^)(BOOL))completion {
    
    if ([self tabBarIsVisible] == visible) return (completion)? completion(YES) : nil;
    
    CGRect frame = self.tabBarController.tabBar.frame;
    CGFloat height = frame.size.height;
    
    NSLog(@"f--- %f",height);
    
    CGFloat offsetY = (visible)? -height : height;
    
    CGFloat duration = (animated)? 0.05 : 0.0;
    
    [UIView animateWithDuration:duration animations:^{
        self.tabBarController.tabBar.frame = CGRectOffset(frame, 0, offsetY);
    } completion:completion];
}

- (BOOL)tabBarIsVisible {
    return self.tabBarController.tabBar.frame.origin.y < CGRectGetMaxY(self.view.frame);
}

- (IBAction)pressedTabBarButton:(id)sender {
    [self setTabBarVisible:![self tabBarIsVisible] animated:YES completion:^(BOOL finished) {
        //        NSLog(@"finished");
    }];
}

//- (void)navTabBarVisible:(BOOL)visible animated:(BOOL)animated completion:(void (^)(BOOL))completion {
//
//    if ([self navBarIsVisible] == visible) return (completion)? completion(YES) : nil;
//
//    CGRect frame = self.navigationController.navigationBar.frame;
//    CGFloat height = frame.size.height;
//    CGFloat offsetY = (visible)? -height : height;
//
//    CGFloat duration = (animated)? 0.05 : 0.0;
//
//    [UIView animateWithDuration:duration animations:^{
//        self.navigationController.navigationBar.frame = CGRectOffset(frame, 0, offsetY);
//    } completion:completion];
//}
//
//- (BOOL)navBarIsVisible {
//    return self.navigationController.navigationBar.frame.origin.y < CGRectGetMaxY(self.view.frame);
//}
//- (IBAction)pressedNavBarButton:(id)sender {
//
////    [self navigationController:![self navigationBar] animated:YES completion:^(BOOL finished) {
//////        NSLog(@"finished");
//    [self navigationController: animated:YES completion:^(BOOL finished)];
////    [self dismissViewControllerAnimated:YES completion:NULL];
//
//}


@end


