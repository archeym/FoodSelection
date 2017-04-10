//
//  ViewController.m
//  FoodSelection
//
//  Created by Arkadijs Makarenko on 23/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.

#import "ViewController.h"
#import "FoodCell.h"
#import "DrinkCell.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, FoodCellDelegate, DrinkCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareTableView];
}
-(void)prepareTableView{
    self.tableView.dataSource = self;
}
#pragma mark - tableView
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier1 = @"foodCell";
    static NSString *CellIdentifier2 = @"drinkCell";

    if (indexPath.row % 2 == 0) {
        FoodCell *cell = (FoodCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier1];
        cell.delegate =self;
        return cell;
    }
    else {
        DrinkCell *cell = (DrinkCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        cell.delegate =self;
        return cell;
    }
}
-(void)didSelectImage:(UIImage *)image{
    self.foodImage.image = image;
}
-(void)didSelectImage2:(UIImage *)image2{
    self.drinkImage.image = image2;
}
@end
