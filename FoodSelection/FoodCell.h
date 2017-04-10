//
//  FoodCell.h
//  FoodSelection
//
//  Created by Arkadijs Makarenko on 23/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import <UIKit/UIKit.h>


//1.Declare/define
@protocol FoodCellDelegate <NSObject>

-(void)didSelectImage:(UIImage*)image;
@end


@interface FoodCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

//2.set
@property(weak, nonatomic) id<FoodCellDelegate> delegate;
@end
