//
//  ApartmentRLMObject.h
//  RealmTestProject
//
//  Created by Poulose Matthen on 26/07/17.
//  Copyright © 2017 Poulose Matthen. All rights reserved.
//

#import <Realm/Realm.h>

@interface ApartmentRLMObject : RLMObject

@property NSString *tower;
@property NSString *floor;
@property NSString *apartmentNumber;
@property NSString *layout;
@property NSString *sqft;
@property NSString *direction;
@property NSString *isSold;

@end
