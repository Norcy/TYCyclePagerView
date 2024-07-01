//
//  TYCyclePagerViewCell.m
//  TYCyclePagerViewDemo
//
//  Created by tany on 2017/6/14.
//  Copyright © 2017年 tany. All rights reserved.
//

#import "TYCyclePagerViewCell.h"

@interface TYCyclePagerViewCell ()
@property (nonatomic, weak) UILabel *label;
@end

@implementation TYCyclePagerViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addLabel];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.backgroundColor = [UIColor clearColor];
        [self addLabel];
    }
    return self;
}


- (void)addLabel {
    UILabel *label = [[UILabel alloc]init];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:18];
    [self addSubview:label];
    
    UILabel *label2 = [[UILabel alloc]init];
    label2.textAlignment = NSTextAlignmentCenter;
    label2.textColor = [UIColor redColor];
    label2.font = [UIFont systemFontOfSize:18];
    [self addSubview:label2];
    
    _label = label;
    _label2 = label2;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _label.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height/2);
    _label2.frame = CGRectMake(0, self.bounds.size.height/2, self.bounds.size.width, self.bounds.size.height/2);
}

@end
