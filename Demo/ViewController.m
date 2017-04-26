//
//  ViewController.m
//  Demo
//
//  Created by qyb on 2017/4/24.
//  Copyright © 2017年 qyb. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"
#define Screen_Width  [UIScreen mainScreen].bounds.size.width

@interface ViewController ()<SDCycleScrollViewDelegate>
@property (strong,nonatomic) SDCycleScrollView *topPhotoBoworr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.topPhotoBoworr];
}
- (SDCycleScrollView *)topPhotoBoworr{
    if (_topPhotoBoworr == nil) {
        _topPhotoBoworr = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 20, Screen_Width, Screen_Width/2) delegate:self placeholderImage:nil];
        _topPhotoBoworr.boworrWidth = Screen_Width - 30;
        _topPhotoBoworr.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
        _topPhotoBoworr.bannerImageViewContentMode = UIViewContentModeScaleAspectFill;
        _topPhotoBoworr.boworrWidth = Screen_Width-20;
        _topPhotoBoworr.cellSpace = 2;
        _topPhotoBoworr.titleLabelHeight = 60;
//        self.view.userInteractionEnabled
//        _topPhotoBoworr.autoScroll = NO;
        _topPhotoBoworr.imageURLStringsGroup = @[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493210044049&di=ac402c2ce8259c98e5e4ea1b7aac4cac&imgtype=0&src=http%3A%2F%2Fimg2.3lian.com%2F2014%2Ff4%2F209%2Fd%2F97.jpg",@"https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1493199772&di=66346cd79eed9c8cb4ec03c3734d0b31&src=http://img15.3lian.com/2015/f2/128/d/123.jpg",@"http://wmtp.net/wp-content/uploads/2017/04/0420_sweet945_1.jpeg",@"http://wmtp.net/wp-content/uploads/2017/04/0407_shouhui_1.jpeg"];
        _topPhotoBoworr.titlesGroup = @[@"超级简单又好看的流行编发教程 2017时尚流行发型\n 高贵的典雅 爆乳性感美女车模 岁月...多想把",@"超级简单又好看的流行编发教程 2017时尚流行发型 \n高贵的典雅 爆乳性感美女车模 岁月...多想把",@"超级简单又好看的流行编发教程 2017时尚流行发型 \n高贵的典雅 爆乳性感美女车模 岁月...多想把",@"超级简单又好看的流行编发教程 2017时尚流行发型 \n高贵的典雅 爆乳性感美女车模 岁月...多想把"];
    }
    return _topPhotoBoworr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
