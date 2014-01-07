//
//  ProductCell.h
//  p194
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "product.h"
@interface ProductCell : UITableViewCell

@property(weak,nonatomic) IBOutlet UILabel *productName;
@property(weak,nonatomic) IBOutlet UILabel *productPrice;
@property(weak,nonatomic) IBOutlet UIImageView *productImage;

-(void) setProductInfo:(product *)item;

@end
