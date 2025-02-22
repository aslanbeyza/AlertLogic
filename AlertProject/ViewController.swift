//
//  ViewController.swift
//  AlertProject
//
//  Created by Beyza Aslan on 22.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //actions
    @IBAction func signUpClicked(_ sender: Any) {
    //butona tıklanınca uyarı nasıl veriliyor ona bakalım
//        let alert = UIAlertController(title: "Ölümcül hata", message: "Lütfen bilgilerinizi doğru giriniz", preferredStyle:UIAlertController.Style.alert)
//        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default){
//            (UIAlertAction) in
//            //butona tıklanınca olacak aksiyonlar bunlar
//            print("Ok tuşuna tıklanıyor")
//        }
//        alert.addAction(okButton)
//        
//        self.present(alert, animated: true, completion: nil)
        
        if userNameText.text == "" {
//            let alert = UIAlertController(title: "Hata var kardeş", message: "kullanıcı adı bulunamadı", preferredStyle: UIAlertController.Style.alert)
//            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler:nil)
//            alert.addAction(okButton)
//            self.present(alert, animated: true, completion: nil)
            makeAlert(titleInput:"kullanıcı adı bulunamadı", messageInput:"kullanıcı adı bulunamadı")
        }
        
        else if passwordText.text == "" {
//            let alert = UIAlertController(title: "Hata var kardeş", message: "şifre bulunamadı ", preferredStyle: UIAlertController.Style.alert)
//            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler:nil)
//            alert.addAction(okButton)
//            self.present(alert, animated: true, completion: nil)
            makeAlert(titleInput:"şifreler eşleşmiyor", messageInput:"Password dont match")
        }
        
        else if passwordAgainText.text != passwordText.text{
//            let alert = UIAlertController(title: "Hata var kardeş", message: "şifreler eşleşmiyor", preferredStyle: UIAlertController.Style.alert)
//            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler:nil)
//            alert.addAction(okButton)
//            self.present(alert, animated: true, completion: nil)
            makeAlert(titleInput:"şifreler eşleşmiyor", messageInput:"Password dont match")
            
        }else{
//            let alert = UIAlertController(title: "Başarılı", message: "giriş başarılıdır.", preferredStyle: UIAlertController.Style.alert)
//            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler:nil)
//            alert.addAction(okButton)
//            self.present(alert, animated: true, completion: nil)
            
            makeAlert(titleInput:"Success", messageInput:"User created")
        }
    }
    
    func makeAlert(titleInput:String, messageInput:String){
        let alert = UIAlertController(title:titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler:nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    }
