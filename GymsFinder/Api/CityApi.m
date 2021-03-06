//
//  CityApi.m
//  GymsFinder
//
//  Created by Michael Hsieh on 2017/4/22.
//  Copyright © 2017年 Michael Hsieh. All rights reserved.
//

#import "CityApi.h"

static NSString * const ALL_CITY_AND_COUNTRY = @"https://works.ioa.tw/weather/api/all.json";
static NSString * const COUNTRY_LIST_BY_CITYNAME = @"https://iplay.sa.gov.tw/Country/CountryListByCityName?CityName=%@";
static NSString * const CityList = @"CityList";

@implementation CityApi

+ (void)downloadAllCityAndCountry:(CompletionHandler)completionHandler {
//    [self downloadFileWithFileName:CityList URLstring:ALL_CITY_AND_COUNTRY completionHandler:^(NSError *error) {
//        completionHandler (error);
//    }];
}

+ (void)downloadCountryListWithCityName:(NSString *)cityName completionHandler:(CompletionHandler)completionHandler {
    [self downloadFileWithFileName:cityName URLstring:[NSString stringWithFormat:COUNTRY_LIST_BY_CITYNAME, [cityName stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]]] isPost:YES completionHandler:^(NSError *error) {
        
        completionHandler (error);
    }];
}

@end
