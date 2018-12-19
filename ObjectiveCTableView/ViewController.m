//
//  ViewController.m
//  ObjectiveCTableView
//
//  Created by Matt Mejia on 12/18/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"

@interface ViewController ()

// This property will belong to this class.
//@property (strong, nonatomic) NSArray *courses;

// Instead of the above, we will specify the type of the NSArray items
//@property (strong, nonatomic) NSArray<Course *> *courses;

// But we can't do the above. We will need to change the elements in the array,
// and so we need an NSMutableArray
@property (strong, nonatomic) NSMutableArray<Course *> *courses;




@end



/////////////////////////////////////////////////////////




@implementation ViewController

// This variable will be local to this implementation
NSString *cellId = @"cellId";

// Don't do this.
// NSArray *courses;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupCourses];
    

    
    self.navigationItem.title = @"Courses";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    // Register a cell w/ identifier "@cellId"
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
    
}





- (void)setupCourses {
    // Instantiate our course object in the "@interface" section
    self.courses = NSMutableArray.new;
    
    // Creating a "course" object
    // Can also do the following old way:
    // Course *course = [[Course alloc] init]
    Course *course = Course.new;
    course.name = @"Instagram Firebase";
    
    // Don't do this; we cannot convert an int to an NSNumber type,
    // which is the type of the numberOfLessons property.
    // course.numberOfLessons = 49;
    
    // Instead, do this
    course.numberOfLessons = @(49);
    
    // Adds the course to our "courses" array.
    [self.courses addObject:course];
}









// (return type)tableView:STUFF
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 10;
    return self.courses.count;
}

// Display individual cell(s)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    Course *course = self.courses[indexPath.row];
    
//    cell.backgroundColor = UIColor.redColor;
//    cell.textLabel.text = @"Course Name";
    
    cell.textLabel.text = course.name;
    return cell;
}

@end
