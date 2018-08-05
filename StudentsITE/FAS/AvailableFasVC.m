
//
//  AvailableFasVC.m
//  StudentsITE
//
//  Created by Alson on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "AvailableFasVC.h"
#import "fasCell.h"

@interface AvailableFasVC ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation AvailableFasVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _FAS = [[NSMutableArray alloc] init];
    _FasInfo = [[NSMutableArray alloc] init];
    _FasInfo1 = [[NSMutableArray alloc] init];
    
    //Variables Needed
    CGFloat NoOfFamilyMembers = _Family.count + 1;
    CGFloat TotalGMI = 0;
    
    //Total GMI
    for(FamilyMember *Member in _Family){
        
        TotalGMI += Member.GMI;
        
    }
    
    //PCI
    _PCI = TotalGMI / NoOfFamilyMembers;
    _pciTxt.text = [NSString stringWithFormat:@"$%.2f", _PCI];
    
    if (_PCI > 2250) {
        [_FAS addObject:@"Not Eligible"];
        [_FasInfo addObject:@"Sorry You Are Not Eligible For FAS"];
        [_FasInfo1 addObject:@""];
    }
    
    if (_PCI <= 625){
        [_FAS addObject:@"CDC & CCC-ITE Busary"];
        [_FasInfo addObject:@"Nitec / Higher Nitec: $1400"];
        [_FasInfo1 addObject:@"Diploma: $2350"];
    }
    
    if (_PCI >= 626 && _PCI <= 1000) {
        [_FAS addObject:@"CDC & CCC-ITE Busary"];
        [_FasInfo addObject:@"Nitec / Higher Nitec: $1050"];
        [_FasInfo1 addObject:@"Diploma: $2150"];
    }
    
    if (_PCI >= 1001 && _PCI <= 1725) {
        [_FAS addObject:@"MOE Busary"];
        [_FasInfo addObject:@"Nitec / Higher Nitec: $500"];
        [_FasInfo1 addObject:@"Diploma: $1650"];
    }
    
    if (_PCI >= 1726 && _PCI <= 2250) {
        [_FAS addObject:@"MOE Busary"];
        [_FasInfo addObject:@"Nitec / Higher Nitec: $350"];
        [_FasInfo1 addObject:@"Diploma: $800"];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITableView Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return (int)_FAS.count;
}

- (NSInteger)numberOfSections{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    fasCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.fasTitle.text = _FAS[indexPath.row];
    cell.fasInfo1.text = _FasInfo[indexPath.row];
    cell.fasInfo2.text = _FasInfo1[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 105;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return @"Financial Assistance Scheme Available:";
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)mainBtn:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"MainMenu"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
