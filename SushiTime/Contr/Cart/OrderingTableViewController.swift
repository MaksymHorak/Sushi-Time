//
//  OrderingTableViewController.swift
//  SushiTime
//
//  Created by 1 on 19.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class OrderingTableViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var telephoneTestField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var houseTextField: UITextField!
    @IBOutlet weak var entranceTextField: UITextField!
    @IBOutlet weak var appartmentsTextField: UITextField!
    @IBOutlet weak var levelTextField: UITextField!
    @IBOutlet weak var personsCountTextField: UITextField!
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
        
        let alert = UIAlertController(title: "Умови замовлення та доставки", message: "Приймаємо замовлення: \n З понеділка по неділю 10:00 - 23:30 \n \n Години доставки замовлень: \n З понеділка по неділю 10:00 - 00:00 \n \n Доставка кур'єром (75 Грн) \n Після замовлення на суму більше 150 грн. доставка безкоштовна, алкогольні напої не входять в загальну вартість замовлення. ", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        

            overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObservers()
        self.activityIndicator.stopAnimating()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObservers()
    }
    //actions
    
    @IBAction func alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Умови замовлення та доставки", message: "Приймання замовлень: \n З понеділка по неділю 10:00 - 23:20 \n \n Години доставки замовлень: \n З понеділка по неділю 10:00 - 00:00 \n \n Доставка кур'єром (75 Грн) \n Після замовлення на суму більше 150 грн. доставка безкоштовна, алкогольні напої не входять в загальну вартість замовлення. ", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    @IBAction func finishOrder(_ sender: UIButton) {
        
        loadingBG.alpha = 1
        loadingLbl.alpha = 1
        loadingSpiner.alpha = 1
        
//        activityIndicator.alpha = 0
//        activityIndicator.backgroundColor = (UIColor.black)
//        activityIndicator.center = self.view.center
//        activityIndicator.hidesWhenStopped = true
//        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
//        view.addSubview(activityIndicator)
//
//        activityIndicator.startAnimating()
        //UIApplication.shared.beginIgnoringInteractionEvents()
        
        
        if nameTextField.text == "" {
           // self.activityIndicator.stopAnimating()
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
            
            let alert = UIAlertController(title: "Поле Ім'я не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
            
        }
        else if telephoneTestField.text == "" {
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
          //  self.activityIndicator.stopAnimating()
            let alert = UIAlertController(title: "Поле Телефон не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else if streetTextField.text == "" {
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
           // self.activityIndicator.stopAnimating()
            let alert = UIAlertController(title: "Поле Вулиця не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else if houseTextField.text == "" {
            loadingBG.alpha = 0
            loadingLbl.alpha = 0
            loadingSpiner.alpha = 0
          //  self.activityIndicator.stopAnimating()
            let alert = UIAlertController(title: "Поле Будинок не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else {
//            loadingBG.alpha = 0
//            loadingLbl.alpha = 0
//            loadingSpiner.alpha = 0
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
            SendMailManager.shared.sendMailWithData(userEmail: email, text: CartManager.shared.formText(phoneNumber: telephoneTestField.text!, email: email, name: nameTextField.text!, street: streetTextField.text!, house: houseTextField.text!, enter: entranceTextField.text, level: levelTextField.text, appartments: appartmentsTextField.text, persons: personsCountTextField.text, sticks: sticksTextField.text, pay: payTextField.text)) { success in
                if success {
                    self.loadingBG.alpha = 0
                    self.loadingLbl.alpha = 0
                    self.loadingSpiner.alpha = 0
                 //   self.activityIndicator.stopAnimating()
                    UIApplication.shared.endIgnoringInteractionEvents()
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
                 //   self.activityIndicator.stopAnimating()
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
