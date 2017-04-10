//
//  FoodCell.m
//  FoodSelection
//
//  Created by Arkadijs Makarenko on 23/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UITapGestureRecognizer *tagGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(imageTapped:)];
    [self.imageView1 addGestureRecognizer:tagGesture];
     UITapGestureRecognizer *tagGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(imageTapped:)];
    [self.imageView2 addGestureRecognizer:tagGesture2];
     UITapGestureRecognizer *tagGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(imageTapped:)];
    [self.imageView3 addGestureRecognizer:tagGesture3];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)imageTapped:(UIGestureRecognizer *)sender{
    UIImageView *tappedView = (UIImageView *)sender.view;
    UIImage *tappedImage = tappedView.image;
    if (self.delegate) {
        [self.delegate didSelectImage:tappedImage];
    }
}


@end
