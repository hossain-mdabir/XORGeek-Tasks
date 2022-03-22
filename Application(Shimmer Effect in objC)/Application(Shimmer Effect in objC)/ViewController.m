//
//  ViewController.m
//  Application(Shimmer Effect in objC)
//
//  Created by XORGeek New on 2022/03/22.
//

#import "ViewController.h"
#import "FBShimmeringView.h"
#import "FBShimmering.h"
#import "FBShimmeringLayer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet FBShimmeringView *shimmeringView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _shimmeringView.shimmering = !_shimmeringView.shimmering;

    
    
    _shimmeringView.contentView = _shimmeringView;
    _shimmeringView.shimmering = YES;
    

//    FBShimmeringLayer *shimmeringImageView = [[FBShimmeringLayer alloc]initWithFrame:self.view.bounds];
//    [self.view addSubview:shimmeringImageView];

//    UIImageView *loadImage = [[UIImageView alloc]initWithFrame:_shimmerImageView.bounds];
////
//    self.shimmerImageView.image = [UIImage imageNamed: @"img.png"];
//   shimmeringView.shimmering = YES;
//
}


@end

-(void)didTapView {
    [super didTapView];
    _shimmeringView._shimmering = !_shimmeringView._shimmering;


}

