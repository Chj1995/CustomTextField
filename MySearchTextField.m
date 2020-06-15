//
//  MySearchTextField.m
//  自定义视图
//
//  Created by 陈辉金 on 2020/6/11.
//  Copyright © 2020 chj. All rights reserved.
//

#import "MySearchTextField.h"

@implementation MySearchTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.borderStyle = UITextBorderStyleNone;
        self.textAlignment = NSTextAlignmentLeft;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.layer.cornerRadius = frame.size.height / 2;
        self.layer.borderWidth = 1;
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
    return self;
}

- (void)setPlaceholderStr:(NSString *)placeholderStr {
    self.placeholder = placeholderStr;
}

-(void)setIconImageName:(NSString *)iconImageName {
    UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 8, 20, 20)];
    iconImageView.image = [UIImage imageNamed:iconImageName];
    self.leftView = iconImageView;
}

//leftView和输入框的间距
- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect iconRect = [super leftViewRectForBounds:bounds];
    iconRect.origin.x += 10; //像右边偏15
    return iconRect;
}

//UITextField 文字与输入框的距离
- (CGRect)textRectForBounds:(CGRect)bounds{

    return CGRectInset(bounds, 30, 0);
}
//控制文本的位置
- (CGRect)editingRectForBounds:(CGRect)bounds{

    return CGRectInset(bounds, 30, 0);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
