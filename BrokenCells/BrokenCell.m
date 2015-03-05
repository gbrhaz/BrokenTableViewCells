//
//  BrokenCell.m
//  BrokenCells
//
//  Created by Harry Richardson on 05/03/2015.
//  Copyright (c) 2015 Harry Richardson. All rights reserved.
//

#import "BrokenCell.h"

@implementation BrokenCell

- (void)awakeFromNib {
    self.topLabel.text = @"person farewgaergaergaregkj klj lkk";
    self.middleLabel.text = @"middle label";
    self.bottomLabel.text = @"bottom";
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    self.topLabel.preferredMaxLayoutWidth = [self.topLabel alignmentRectForFrame:self.topLabel.frame].size.width;
    self.middleLabel.preferredMaxLayoutWidth = [self.middleLabel alignmentRectForFrame:self.middleLabel.frame].size.width;
    self.bottomLabel.preferredMaxLayoutWidth = [self.bottomLabel alignmentRectForFrame:self.bottomLabel.frame].size.width;
}

@end
