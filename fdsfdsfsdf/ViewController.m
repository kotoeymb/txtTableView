//
//  ViewController.m
// textTableView

//  Created by Revo Tech on 6/8/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//


#import "ViewController.h"
#import "CustomizaTableViewCell.h"
#import "CustomClas.h"
#import "CustomClass2.h"
#import "Custom2TableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *listOfElements;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadTableView];
    [self loadDataTableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) loadTableView{
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 80;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView setNeedsLayout];
    [self.tableView layoutIfNeeded];
    
    self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0) ;// Status bar inset

}
-(void) loadDataTableView{

    CustomClas *eleme1 = [CustomClas new];
    eleme1.title = @" John Doe";
    eleme1.descriptionText = @"459D #6A, New University Avenue Rd,.. Phone 12345667 ";
    eleme1.imageV = [UIImage imageNamed:@"Radio_Button-128.png"];
    CustomClas *eleme2 = [CustomClas new];
    
    eleme2.title = @" John Doe";
    eleme2.descriptionText = @"459D #6A, New University Avenue Rd,.. Phone 75641213";
    eleme2.imageV = [UIImage imageNamed:@"Radiobutton-choice.png"];


//    CustomClas *elem2 = [CustomClas new];
//    elem2.title = @"hola este título 2";
//    elem2.descriptionText = @"If all your cells have the same height, double check that you’re setting estimatedRowHeight to a non-zero amount and rowHeight  to UITableViewAutomaticDimension.";
//    CustomClass2 *elem3 = [CustomClass2 new];
//    elem3.titlename = @"John Doe";
//    elem3.titleClass = @" 459D #6A, New University Avenue Rd,.. Phone 12345667";
    
    // elem3.imageV = [UIImage imageNamed:@"imageStack"];
    
//    CustomClass2 *elem4 = [CustomClass2 new];
//    elem4.titleClass = @"Hi this text have ";
//    elem4.imageV = [UIImage imageNamed:@"imageStack"];
//    
//    CustomClas *elem5 = [CustomClas new];
//    elem5.title = @"hola este título 2";
//    elem5.descriptionText = @"If all your cells have the same height, double check that you’re setting estimatedRowHeight to a non-zero amount and rowHeight  to UITableViewAutomaticDimension.";

    
    _listOfElements = [[NSArray alloc] initWithObjects:eleme1,eleme2, nil];
    [_tableView reloadData];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
   return  _listOfElements.count;
    
}




-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
//cellIdentify
    /*
    
    static NSString *cellIdentify = @"cellIdentify";
    if([[_listOfElements objectAtIndex:indexPath.row] isKindOfClass:[CustomClas class]]){
        CustomizaTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        if (!cell)
        {
            [tableView registerNib:[UINib nibWithNibName:@"CustomizaTableViewCell" bundle:nil] forCellReuseIdentifier:cellIdentify];
            cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        }
        cell.labelBitText.text = [[_listOfElements objectAtIndex:indexPath.row] descriptionText];
        cell.labelSmallText.text = [[_listOfElements objectAtIndex:indexPath.row] title];
        cell.img_view.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
        return cell;
    }
    
    
    Custom2TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentify2"];
        if (!cell)
        {
            [tableView registerNib:[UINib nibWithNibName:@"Custom2TableViewCell" bundle:nil] forCellReuseIdentifier:@"cellIdentify2"];
            cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentify2"];
        }
        cell.labelText.text = [[_listOfElements objectAtIndex:indexPath.row] title];
        cell.labeltitle.text = [[_listOfElements objectAtIndex:indexPath.row] descriptionText];
        cell.imageViewImage.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
    
    
      //   cell.imageViewImage.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
    
    return cell;
     
     */
    
    if ([indexPath compare:self.selectedIndexPath] == NSOrderedSame) {
        // Create your custom cell here and return it.
        
        Custom2TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentify2"];
        if (!cell)
        {
            [tableView registerNib:[UINib nibWithNibName:@"Custom2TableViewCell" bundle:nil] forCellReuseIdentifier:@"cellIdentify2"];
            cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentify2"];
        }
        cell.labelText.text = [[_listOfElements objectAtIndex:indexPath.row] title];
        cell.labeltitle.text = [[_listOfElements objectAtIndex:indexPath.row] descriptionText];
        cell.imageViewImage.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
        
        
        //   cell.imageViewImage.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
        
        return cell;

        
    }
    else {
        // Should create a normal cell and return it.
        
        static NSString *cellIdentify = @"cellIdentify";
        if([[_listOfElements objectAtIndex:indexPath.row] isKindOfClass:[CustomClas class]]){
            CustomizaTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
            if (!cell)
            {
                [tableView registerNib:[UINib nibWithNibName:@"CustomizaTableViewCell" bundle:nil] forCellReuseIdentifier:cellIdentify];
                cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
            }
            cell.labelBitText.text = [[_listOfElements objectAtIndex:indexPath.row]title ];
            cell.labelSmallText.text = [[_listOfElements objectAtIndex:indexPath.row]descriptionText ];
            cell.img_view.image = [[_listOfElements objectAtIndex:indexPath.row] imageV];
            
            
            return cell;
        }

    }

    return cell;
}
//-  (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *currentCell = [aTableView cellForRowAtIndexPath:indexPath];
//    [aTableView beginUpdates];
//    
//   //  [atableView  ];
//    
////    
////    CGContextRef context = UIGraphicsGetCurrentContext();
////    [UIView beginAnimations:nil context:context];
////    [UIView setAnimationDuration:0.5];
////    [UIView setAnimationDelegate:currentCell];
////    [UIView setAnimationDidStopSelector:@selector(endAnimation)];
////    
////    float extendedSize = currentCell.frame.size.height;
////    currentCell.frame = CGRectMake(currentCell.frame.origin.x, currentCell.frame.origin.y, currentCell.frame.size.width, currentCell.frame.size.height + extendedSize);
////    
////    UITableViewCell *afterCell;
////    for (int i=indexPath.row+1; i<=[aTableView numberOfRowsInSection:indexPath.section]; i++) {
////        afterCell = [aTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:indexPath.section]];
////        afterCell.frame = CGRectMake(afterCell.frame.origin.x, (afterCell.frame.origin.y + extendedSize), afterCell.frame.size.width, afterCell.frame.size.height);
////    }
////    [UIView commitAnimations];
////     NSIndexPath *path =[aTableView indexPathForSelectedRow];
////    UITableViewCell *cell = [aTableView cellForRowAtIndexPath:indexPath];
////    if(cell.isSelected){
////        [aTableView deselectRowAtIndexPath:indexPath animated:YES];
////    }
//
//}
//
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedIndexPath = indexPath;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation: UITableViewRowAnimationNone];

}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    if([indexPath isEqual:[tableView indexPathForSelectedRow]]) {
//        return 88.0;
//    }
//    
//    return 44.0;
//}
// (index)
@end
