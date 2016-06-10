//
//  CustomizaTableViewCell.m
// textTableView

//  Created by Revo Tech on 6/8/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "CustomizaTableViewCell.h"

@implementation CustomizaTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.labelBitText = [[UILabel alloc]initWithFrame:CGRectMake(15, 10, 320, 20)];
        self.labelBitText.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.labelBitText];

    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
