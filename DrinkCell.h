//
//  DrinkCell.h
//  FoodSelection
//
//  Created by Arkadijs Makarenko on 23/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DrinkCellDelegate <NSObject>
-(void)didSelectImage2:(UIImage *)image2;
@end
@interface DrinkCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *image1;
@property (weak, nonatomic) IBOutlet UIButton *image2;
@property (weak, nonatomic) IBOutlet UIButton *image3;

@property(weak, nonatomic)id<DrinkCellDelegate> delegate;
@end
