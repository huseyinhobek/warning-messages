//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Hüseyin HÖBEK on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextFeild: UITextField!
    @IBOutlet weak var passwordTextFeild: UITextField!
    @IBOutlet weak var passwordAgainTextFeild: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextFeild.text == "" {
            //email değerin girilmemiş
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email Eksik")
            
        } else if passwordTextFeild.text == "" {
            // parola girilmemiş
          alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parola Eksik")
            
        } else if passwordTextFeild.text != passwordAgainTextFeild.text{
            // parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar Uyuşmuyor")
            
        } else {
            //Kayıt Başarılı
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanıcı Oluşturuldu")
            
        }
                    
     
    }
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String) {
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // OK Butonuna tıklanınca olacaklar kısmı
            print("OK Buton Tıklandı")
        }
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
        
    }
    
    
}
// UYARI OLUŞTURMA FONKSİYONU

