//
//  ViewController.m
//  TagsView
//
//  Created by liwei on 17/3/16.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "ViewController.h"
#import "FFTagsView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    
    FFTagsViewConfig *config = [[FFTagsViewConfig alloc] init];
    config.itemHeight = 30;
    config.itemHerMargin = 10;
    config.itemVerMargin = 10;
    config.hasBorder = YES;
    config.topBottomSpace = 15.0;
    config.itemContentEdgs = 20;
    config.isCanSelected = YES;
    config.isCanCancelSelected = YES;
    config.singleSelectedTitle = @"啥风格风格";
    config.isMulti = NO;
    config.selectedDefaultTags =  @[@"功夫",@"是否",@"很感动的"] ;
    
    CGFloat w = [UIScreen mainScreen].bounds.size.width-50;
    NSArray *tags = @[@"反倒是",@"更多",@"鼓捣鼓捣发",@"国防生的",@"韩国",@"还让",@"金凤",@"人的风格",@"个梵蒂冈和",@"第三方",@"是否",@"热",@"啥风格风格",@"功夫",@"发送给是否",@"方法",@"好的",@"爱国的风格",@"符合的",@"很感动的",@"就好几个大地飞歌"];
    FFTagsView *tagView = [[FFTagsView alloc] initWithFrame:CGRectMake(25, 80, w, 0) tagsArray:tags config:config];
    tagView.backgroundColor = [UIColor cyanColor];
    
    tagView.tagBtnClickedBlock = ^(FFTagsView *aTagsView, UIButton *sender, NSInteger index){
        NSLog(@"--- index = %ld",index);
        //NSLog(@"---- titles = %@",aTagsView.multiSelectedTags);
    };
    
    [self.view addSubview:tagView];
    
    
    CGFloat viewHeight = [tagView heighttagsArray:tags config:config];
    NSLog(@"------h = %.2f---",viewHeight);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
