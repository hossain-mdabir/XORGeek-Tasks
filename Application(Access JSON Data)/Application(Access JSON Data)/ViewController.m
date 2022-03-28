//
//  ViewController.m
//  Application(Access JSON Data)
//
//  Created by XORGeek New on 28/Mar/22.
//

#import "ViewController.h"
#import "Weather.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray <Weather *> *weather;
@end

@implementation ViewController
NSString *doSomethingWithTheJson = @"doSomethingWithTheJson";

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    - (void)doSomethingWithTheJson
//    {
//        NSDictionary *dict = [self JSONFromFile];
//
//        NSArray *csvjson = [dict objectForKey:@"weather"];
//
//        for (NSDictionary *csvjson in colours) {
//            NSString *name = [csvjson objectForKey:@"WeatherCode"];
//            NSLog(@"Weather Code: %@", WeatherCode);
//
//            if ([name isEqualToString:@"100"]) {
//                NSArray *forecastCode = [csvjson objectForKey:@"Forecast code"];
//                for (NSDictionary *picture in pictures) {
//                    NSString *imgFileName = [picture objectForKey:@"img file name"];
//                    NSLog(@"img file name: %@", imgFileName);
//                }
//            }
//        }
//    }
//
//    - (NSDictionary *)JSONFromFile
//    {
//        NSString *path = [[NSBundle mainBundle] pathForResource:@"csvjson" ofType:@"json"];
//        NSData *data = [NSData dataWithContentsOfFile:path];
//        return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//    }
    
    //    [self setupWeather];
    //    [self fetchWeatherUsingJSON];
    //
    //    self.navigationItem.title = @"Weather";
    //    self.navigationController.navigationBar.prefersLargeTitles = YES;
    //
    //    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellID];
    //
    //}
    //-void(fetchWeatherUsingJSON) {
    //    NSLog(@"Fetching Weather");
    //}
    //-void(setupWeather) {
    //    self.weather = NSMutableArray.new;
    //
    //    Weather *weather = Weather.new;
    //    weather.WeatherCode =
    //
    }
    
    
    
    
- (void)doSomethingWithTheJson
{
    NSDictionary *dict = [self JSONFromFile];
    
    NSArray *csvjson = [dict objectForKey:@"cvjson"];
    
    for (NSDictionary *weather in csvjson) {
        NSString *WeatherCode = [weather objectForKey:@"WeatherCode"];
        NSLog(@"WeatherCode: %@", WeatherCode);
        
        if ([WeatherCode isEqualToString:@"100"]) {
            NSArray *imgFileName = [weather objectForKey:@"imgFileName"];
            for (NSDictionary *Weather in weather) {
                NSString *imgFileName = [weather objectForKey:@"imgFileName"];
                NSLog(@"imgFileName: %@", imgFileName);
            }
        }
    }
}

- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"csvjson" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
