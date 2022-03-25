//
//  ViewController.m
//  Application(Shimmering Effect ObjC)
//
//  Created by XORGeek New on 2022/03/18.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "FBShimmering.h"
#import "FBShimmeringLayer.h"
#import "FBShimmeringView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *userInterfaceView;
@property (strong, nonatomic) IBOutlet UIImageView *userInterfaceImageView;
@property (strong, nonatomic) IBOutlet UIImageView *behindImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"https://reservation.ebi.efusion.jp/wordpress/wp-content/uploads/2022/03/PICKUP-YARDAGE-768x384.jpg"]];
    self.userInterfaceImageView.image = [UIImage imageWithData: imageData];
    
    NSLog( @"text: %@", imageData );
    
    FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:self.userInterfaceImageView.bounds];
    
    UIImageView *loadingImage = [[UIImageView alloc] initWithFrame:shimmeringView.bounds];
//    loadingImage.backgroundColor = [UIColor lightGrayColor];
    
//    shimmeringView.contentView = self.userInterfaceImageView;
    shimmeringView.contentView = self.userInterfaceView;
    shimmeringView.shimmering = YES;
    
//    shimmeringView.hidden = NO;
//    shimmeringView.contentView = self.userInterfaceImageView;
//    shimmeringView.shimmering = YES;
    
    
    if(loadingImage != NULL)
    {
        self.behindImage.hidden = NO;
        shimmeringView.shimmering = NO;
        shimmeringView.hidden = YES;
    }
    
//        if (shimmeringView.contentView == YES) {
//            shimmeringView.shimmering = YES;
//            shimmeringView.shimmeringSpeed = 900;
//            shimmeringView.shimmeringBeginTime = 10;
//            shimmeringView.shimmeringOpacity = 0.1;
//        }else{
//            shimmeringView.shimmering = NO;
//        }
//    if (self.behindImage.image == nil) {
//        shimmeringView.contentView = self.behindImage;
//        shimmeringView.shimmering = YES;
//    }
//    else {
//        shimmeringView.contentView = self.userInterfaceImageView;
//        shimmeringView.shimmering = NO;
//    }
}


@end
