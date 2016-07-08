//
//  ViewController.m
//  TestTableView
//
//  Created by 최철동 on 2016. 7. 7..
//  Copyright © 2016년 최철동. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
{
    NSArray *array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    array = [NSArray arrayWithObjects:@"Apple", @"Banana", @"Car", @"Dog", @"Elephant", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

////
//
////

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"TABLE TITLE";
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return cell;
}

@end
