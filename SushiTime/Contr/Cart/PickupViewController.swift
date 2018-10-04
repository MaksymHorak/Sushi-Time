//
//  PickupViewController.swift
//  SushiTime
//
//  Created by 1 on 20.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class PickupViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var telephoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var personsTextField: UITextField!
    @IBOutlet weak var sticksTextField: UITextField!
    @IBOutlet weak var payTextField: UITextField!
    
    @IBOutlet weak var overalLbl: UILabel!
    
    @IBOutlet weak var loadingBG: UIImageView!
    @IBOutlet weak var loadingLbl: UILabel!
    @IBOutlet weak var loadingSpiner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadingBG.alpha = 0
        loadingLbl.alpha = 0
        loadingSpiner.alpha = 0
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
        let alert = UIAlertController(title: "Умови самовивозу", message: "Приймаємо замовлення: \n З понеділка по неділю 10:00 - 23:30 \n \n Години самовивозу: \n З понеділка по неділю 10:30 - 00:00", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        // Do any additional setup after loading the view.
        overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
    }
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObservers()
    }

    @IBAction func orderButton(_ sender: UIButton) {
        loadingBG.alpha = 1
        loadingLbl.alpha = 1
        loadingSpiner.alpha = 1
        
        if nameTextField.text == "" {
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
            let alert = UIAlertController(title: "Поле Ім'я не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
            
        }
        else if telephoneTextField.text == "" {
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
            let alert = UIAlertController(title: "Поле Телефон не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else {
            
            let email = emailTextField.text!
            if !isValidEmail(testStr: email) {
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "Email введено невірно.", message: nil, preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    let when = DispatchTime.now() + 1.5
                    DispatchQueue.main.asyncAfter(deadline: when){
                        alert.dismiss(animated: true, completion: nil) }
                }
                return
            }
            SendMailManager.shared.sendMailWithData(userEmail: email, text: CartManager.shared.formTextPickup(name: nameTextField.text!, telephone: telephoneTextField.text!, email: email, time: timeTextField.text, persons: timeTextField.text, sticks: sticksTextField.text, pay: payTextField.text)) { success in
                if success {
                    self.loadingBG.alpha = 0
                    self.loadingLbl.alpha = 0
                    self.loadingSpiner.alpha = 0
                    DispatchQueue.main.async {
                        let drinksStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let drinksVC = drinksStoryboard.instantiateViewController(withIdentifier: "FinishTestViewController")as! FinishTestViewController
                        self.navigationController?.pushViewController(drinksVC, animated: false)
                    }
                    
                    print("ok")// все заебись
                }  else {
                    self.loadingBG.alpha = 0
                    self.loadingLbl.alpha = 0
                    self.loadingSpiner.alpha = 0
                    DispatchQueue.main.async {
                        let alert = UIAlertController(title: "Щось пішло не так, спробуйте пізніше!", message: nil, preferredStyle: .alert)
                        self.present(alert, animated: true, completion: nil)
                        let when = DispatchTime.now() + 1.5
                        DispatchQueue.main.asyncAfter(deadline: when){
                            alert.dismiss(animated: true, completion: nil) }
                    }
                    
                    print("No")  // все хуево
                }
            }
        }
    }
    
    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Умови самовивозу", message: "Приймаємо замовлення: \n З понеділка по неділю 10:00 - 23:30 \n \n Години самовивозу: \n З понеділка по неділю 10:30 - 00:00", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func didTapView(gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    func addObservers() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) {
            notification in
            self.keyboardWillShow(notification: notification)
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) {
            notification in
            self.keyboardWillHide(notification: notification)
        }
        
    }
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func keyboardWillShow(notification: Notification) {
        guard let userInfo = notification.userInfo,
            let frame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
                return
        }
        let contentInset = UIEdgeInsets(top: 0, left: 0, bottom: frame.height, right: 0)
        scrollView.contentInset = contentInset
        
    }
    func keyboardWillHide(notification: Notification) {
        scrollView.contentInset = UIEdgeInsets.zero
    }
    
}
