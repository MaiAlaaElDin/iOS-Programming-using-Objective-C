//
//  ViewController.m
//  SignInusingWebService
//
//  Created by Esraa Hassan on 4/23/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableData *dataRecived;
    NSString *name;
    NSString *phone;
    NSString *webServiceString;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    webServiceString=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone";
}


- (IBAction)regBtn:(UIButton *)sender {
    name= [_nameTF text];
    phone= [_phoneTF text];
    [webServiceString stringByReplacingOccurrencesOfString:@"yourPhone" withString:phone];
    [webServiceString stringByReplacingOccurrencesOfString:@"yourName" withString:phone];
    
    NSURL *url=[[NSURL alloc]initWithString:webServiceString];
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceieveResponse\n");
    dataRecived=[NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding ];
    [dataRecived appendData:data];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("ERROR!!");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSDictionary *dec=[NSJSONSerialization JSONObjectWithData:dataRecived options:NSJSONReadingAllowFragments error:nil];
    NSLog(@"%@",[dec objectForKey:@"status"]);
    if([[dec objectForKey:@"status"]isEqualToString:@"FAILING"]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error Signing In" message:@"" delegate:self cancelButtonTitle:@"Try Again" otherButtonTitles:@"OK", nil];
        
        [alert show];
        
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
  if(buttonIndex==0){
        [_nameTF setText:@""];
        [_phoneTF setText:@""];
    }
}
@end
