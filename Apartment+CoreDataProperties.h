//
//  Apartment+CoreDataProperties.h
//  
//
//  Created by Poulose Matthen on 26/07/17.
//
//

#import "Apartment+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Apartment (CoreDataProperties)

+ (NSFetchRequest<Apartment *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *block;
@property (nullable, nonatomic, copy) NSString *floor;
@property (nullable, nonatomic, copy) NSString *apartmentNumber;
@property (nullable, nonatomic, copy) NSString *layout;
@property (nullable, nonatomic, copy) NSString *sqft;
@property (nullable, nonatomic, copy) NSString *direction;
@property (nullable, nonatomic, copy) NSString *sold;

@end

NS_ASSUME_NONNULL_END
