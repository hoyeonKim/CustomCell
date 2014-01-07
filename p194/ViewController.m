//
//  ViewController.m
//  p194
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "product.h"
#import "ProductCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDataSource>{
    NSArray *data;
}

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
    product *item = data[indexPath.row];
    [cell setProductInfo:item];
    
    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    data=@[[product product:@"Ball1" price:@"100" image:@"b1.png"],
    [product product:@"Ball2" price:@"200" image:@"b2.png"],
    [product product:@"Ball3" price:@"250" image:@"b3.png"],
    [product product:@"Ball4" price:@"300" image:@"b4.jpeg"],
    [product product:@"Ball5" price:@"999" image:@"b5.jpeg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
