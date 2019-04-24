//
//  ViewController.m
//  Sync&Async
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)asyncAction:(UIButton *)sender;

- (IBAction)syncAction:(UIButton *)sender;


@end

@implementation ViewController{
    
    NSMutableData * dataReceived;
    UIWebView *webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 500, 500)];
    [webView setDelegate:self];
}


- (IBAction)syncAction:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_textView setText:str];
}

- (IBAction)asyncAction:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
    [connection start];
    
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    dataReceived = [NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    [dataReceived appendData:data];
    [_textView setText:str];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString * str = [[NSString alloc] initWithData:dataReceived encoding:NSUTF8StringEncoding];
    
    //[_textView setText:str];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}
@end
