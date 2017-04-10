//
//  DrinkCell.m
//  FoodSelection
//
//  Created by Arkadijs Makarenko on 23/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "DrinkCell.h"

@implementation DrinkCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}
- (IBAction)button1:(id)sender {
    UIImage *showImage = self.image1.currentBackgroundImage;
    if(self.delegate) {
        [self.delegate didSelectImage2:showImage];
    }
}
- (IBAction)button2:(id)sender {
    UIImage *showImage = self.image2.currentBackgroundImage;
    if(self.delegate) {
        [self.delegate didSelectImage2:showImage];
    }
}
- (IBAction)button3:(id)sender {
    UIImage *showImage = self.image3.currentBackgroundImage;
    if(self.delegate) {
        [self.delegate didSelectImage2:showImage];
    }
}

@end
