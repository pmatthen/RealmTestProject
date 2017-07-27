//
//  ViewController.m
//  RealmTestProject
//
//  Created by Poulose Matthen on 26/07/17.
//  Copyright © 2017 Poulose Matthen. All rights reserved.
//

#import "ViewController.h"
#import "ApartmentRLMObject.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myCSVArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",[RLMRealmConfiguration defaultConfiguration].fileURL);

    RLMResults *testResults = [ApartmentRLMObject allObjects];
    
    if (testResults.count == 0) {
        for (NSArray *apartmentArray in myCSVArray) {
            ApartmentRLMObject *apartmentModel = [[ApartmentRLMObject alloc] init];
            apartmentModel.tower = [apartmentArray objectAtIndex:0];
            apartmentModel.floor = [apartmentArray objectAtIndex:1];
            apartmentModel.apartmentNumber = [apartmentArray objectAtIndex:2];
            apartmentModel.layout = [apartmentArray objectAtIndex:3];
            apartmentModel.sqft = [apartmentArray objectAtIndex:4];
            apartmentModel.direction = [apartmentArray objectAtIndex:5];
            apartmentModel.isSold = [apartmentArray objectAtIndex:6];
            
            [self insertDataIntoDataBaseWithApartmentModel:apartmentModel];
        }
    }

    NSLog(@"The first object is %@", [testResults objectAtIndex:0]);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"tower == 'A'"];
    RLMResults *filteredResults = [testResults objectsWithPredicate:predicate];
    NSLog(@"The filtered results are %@", filteredResults);
}

-(void)insertDataIntoDataBaseWithApartmentModel:(ApartmentRLMObject *)apartmentModel {
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    
    ApartmentRLMObject *apartment = [[ApartmentRLMObject alloc] init];
    apartment = apartmentModel;
    [realm addObject:apartment];
    
    [realm commitWriteTransaction];
}

@end
