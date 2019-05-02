//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(UIButton *)sender;
- (IBAction)takePhoto:(UIButton *)sender;
- (IBAction)choosePhoto:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showAlert:(UIButton *)sender {
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Hello" message:@"This is an alert" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        printf("OK is pressed\n");
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        printf("Cancel is pressed\n");
    }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)takePhoto:(UIButton *)sender {
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
    UIImagePickerController * picker = [UIImagePickerController new];
    picker.allowsEditing = YES;
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:picker animated:YES completion:nil];
    }
    else{
           UIAlertController * alert2 = [UIAlertController alertControllerWithTitle:@"Camera Alert" message:@"Sorry, You can't access your camera now" preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            printf("Dismiss is pressed\n");
        }];
        [alert2 addAction:dismiss];
        [self presentViewController:alert2 animated:YES completion:nil];

    }
    
}

- (IBAction)choosePhoto:(UIButton *)sender {
    
    UIImagePickerController * picker = [UIImagePickerController new];
    picker.allowsEditing = YES;
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    
    // Holds last image selected by the user either on a camera or photo gallery
    _myImage.image = info[UIImagePickerControllerEditedImage];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end


