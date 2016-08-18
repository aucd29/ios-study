//
//  ViewController.m
//  day02_01_tableview
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "ViewController.h"
#import "FadeOutView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mGenres = @[@"genre-action.jpg",
    @"genre-alternative.jpg",
    @"genre-animation.jpg",
    @"genre-blues.jpg",
    @"genre-books.jpg",
    @"genre-business.jpg",
    @"genre-childrens.jpg",
    @"genre-christian.jpg",
    @"genre-classic.jpg",
    @"genre-classical.jpg",
    @"genre-classics.jpg",
    @"genre-classicT.jpg",
    @"genre-comedy.jpg",
    @"genre-country.jpg",
    @"genre-dance.jpg",
    @"genre-documentary.jpg",
    @"genre-drama.jpg",
    @"genre-education.jpg",
    @"genre-electronic.jpg",
    @"genre-engineering.jpg",
    @"genre-finearts.jpg",
    @"genre-folk.jpg",
    @"genre-health.jpg",
    @"genre-hiphop.jpg",
    @"genre-history.jpg",
    @"genre-holiday.jpg",
    @"genre-horror.jpg",
    @"genre-humanities.jpg",
    @"genre-independent.jpg",
    @"genre-jazz.jpg",
    @"genre-jpop.jpg",
    @"genre-kayokyoku.jpg",
    @"genre-kids.jpg",
    @"genre-language.jpg",
    @"genre-latin.jpg",
    @"genre-literature.jpg",
    @"genre-mathematics.jpg",
    @"genre-music.jpg",
    @"genre-newage.jpg",
    @"genre-nonfiction.jpg",
    @"genre-pop.jpg",
    @"genre-rb.jpg",
    @"genre-reality.jpg",
    @"genre-reggae.jpg",
    @"genre-rock.jpg",
    @"genre-romance.jpg",
    @"genre-science.jpg",
    @"genre-scifi.jpg",
    @"genre-shortfilms.jpg",
    @"genre-socialScience.jpg",
    @"genre-soundtrack.jpg",
    @"genre-spoken.jpg",
    @"genre-sports.jpg",
    @"genre-teens.jpg",
    @"genre-thriller.jpg",
    @"genre-vocal.jpg",
    @"genre-western.jpg",
      @"genre-world.jpg"];
    
    UITableView* tv = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    tv.dataSource = self;
    tv.delegate = self;
    
    [self.view addSubview:tv];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return mGenres.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = mGenres[indexPath.row];
    cell.imageView.image = [UIImage imageNamed: [ @"images/" stringByAppendingString:mGenres[indexPath.row]]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"select : %@", mGenres[indexPath.row]);
    
//    UIImageView* iv = [[UIImageView alloc] initWithFrame:self.view.frame];
//    UIImage* img = [UIImage imageNamed: [ @"images/" stringByAppendingString:mGenres[indexPath.row]]];
//    iv.image = img;
    
    NSString* imgName = [ @"images/" stringByAppendingString:mGenres[indexPath.row]];
    
//    FadeOutView* fov = [[FadeOutView alloc] initWithFrame:self.view.frame
//                                                  imgName:imgName];
  
    CGRect rect = CGRectInset(tableView.frame, 50, 100);
    
    FadeOutView* fov = [[FadeOutView alloc] initWithFrame:rect];
    [fov setImageName:imgName];

    [self.view addSubview:fov];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
