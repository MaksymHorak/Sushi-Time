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
    @IBOutlet weak var levelTextField: UITextField!
    @IBOutlet weak var personsCountTextField: UITextField!
    @IBOutlet weak var sticksTextField: UITextField!
    @IBOutlet weak var payTextField: UITextField!
    
    @IBOutlet weak var overalLbl: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
        let alert = UIAlertController(title: "Умови замовлення та доставки", message: "Приймаємо замовлення: \n З понеділка по неділю 10:00 - 23:30 \n \n Години доставки замовлень: \n З понеділка по неділю 10:00 - 00:00 \n \n Доставка кур'єром (75 Грн) \n Після замовлення на суму більше 150 грн. доставка безкоштовна, алкогольні напої не входять в загальну вартість замовлення. ", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        

            overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObservers()
    }
    //actions
    
    @IBAction func alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Умови замовлення та доставки", message: "Приймання замовлень: \n З понеділка по неділю 10:00 - 23:20 \n \n Години доставки замовлень: \n З понеділка по неділю 10:00 - 00:00 \n \n Доставка кур'єром (75 Грн) \n Після замовлення на суму більше 150 грн. доставка безкоштовна, алкогольні напої не входять в загальну вартість замовлення. ", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func finishOrder(_ sender: UIButton) {
        if nameTextField.text == "" {
            let alert = UIAlertController(title: "Поле 'Ім'я' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
            
        }
        else if telephoneTestField.text == "" {
            let alert = UIAlertController(title: "Поле 'Телефон' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else if streetTextField.text == "" {
            let alert = UIAlertController(title: "Поле 'Вулиця' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else if houseTextField.text == "" {
            let alert = UIAlertController(title: "Поле 'Будинок' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else {
            let email = emailTextField.text
            SendMailManager.shared.sendMailWithData(userEmail: email, text: CartManager.shared.formText(phoneNumber: telephoneTestField.text!, email: email, name: nameTextField.text!, street: streetTextField.text!, house: houseTextField.text!, enter: entranceTextField.text, level: levelTextField.text)) { success in
                if success {
                    DispatchQueue.main.async {
                        let drinksStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let drinksVC = drinksStoryboard.instantiateViewController(withIdentifier: "FinishTestViewController")as! FinishTestViewController
                        self.navigationController?.pushViewController(drinksVC, animated: false)
                    }

                    print("ok")// все заебись
                }  else {
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
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: nil) {
            notification in
            self.keyboardWillShow(notification: notification)
        }
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: nil) {
            notification in
            self.keyboardWillHide(notification: notification)
        }
        
    }
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func keyboardWillShow(notification: Notification) {
        guard let userInfo = notification.userInfo,
            let frame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
                return
        }
    let contentInset = UIEdgeInsets(top: 0, left: 0, bottom: frame.height, right: 0)
    scrollView.contentInset = contentInset
    
}
    func keyboardWillHide(notification: Notification) {
    scrollView.contentInset = UIEdgeInsets.zero
}
    


}

