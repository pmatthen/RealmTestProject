//
//  Apartment+CoreDataProperties.m
//  
//
//  Created by Poulose Matthen on 26/07/17.
//
//

#import "Apartment+CoreDataProperties.h"

@implementation Apartment (CoreDataProperties)

+ (NSFetchRequest<Apartment *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Apartment"];
}

@dynamic block;
@dynamic floor;
@dynamic apartmentNumber;
@dynamic layout;
@dynamic sqft;
@dynamic direction;
@dynamic sold;

@end
