//
//  PrimeFlowLayout.m
//  PullToRefreshAnimation
//
//  Created by David Rönnqvist on 10/20/13.
//  Copyright (c) 2013 Skype. All rights reserved.
//

#import "PrimeFlowLayout.h"

@implementation PrimeFlowLayout

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    UICollectionViewLayoutAttributes *attributes = [super initialLayoutAttributesForAppearingItemAtIndexPath:itemIndexPath];
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = -1./800.;
    transform = CATransform3DRotate(transform, M_PI_2, -1, 0, 0);
    transform = CATransform3DScale(transform, .8, .8, .8);
    attributes.transform3D = transform;
    
    return attributes;
}

@end
