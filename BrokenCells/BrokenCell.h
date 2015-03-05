//
//  BrokenCell.h
//  BrokenCells
//
//  Created by Harry Richardson on 05/03/2015.
//  Copyright (c) 2015 Harry Richardson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrokenCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *topLabel;
@property (nonatomic, weak) IBOutlet UILabel *middleLabel;
@property (nonatomic, weak) IBOutlet UILabel *bottomLabel;

@end
