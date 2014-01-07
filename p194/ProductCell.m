//
//  ProductCell.m
//  p194
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ProductCell.h"

@implementation ProductCell
-(void) setProductInfo:(product *)item{
    self.productName.text = item.name;
    self.productPrice.text = item.price;
    self.productImage.image = [UIImage imageNamed:item.imageName];
}
@end
