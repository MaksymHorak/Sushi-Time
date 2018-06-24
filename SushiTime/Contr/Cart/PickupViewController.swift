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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
        let alert = UIAlertController(title: "Умови самовивозу", message: "TEXT", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        // Do any additional setup after loading the view.
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

    @IBAction func orderButton(_ sender: UIButton) {
        if nameTextField.text == "" {
            let alert = UIAlertController(title: "Поле 'Ім'я' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
            
        }
        else if telephoneTextField.text == "" {
            let alert = UIAlertController(title: "Поле 'Телефон' не заповнено", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1.5
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }
        } else {
            
            let cartStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let orderingVC = cartStoryboard.instantiateViewController(withIdentifier: "FinishTestViewController")as! FinishTestViewController
            self.navigationController?.pushViewController(orderingVC, animated: true)
            
        }
    }
    
    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Умови замовлення та доставки", message: "Приймання замовлень: \n З понеділка по неділю 10:00 - 23:20 \n \n Години доставки замовлень: \n З понеділка по неділю 10:00 - 00:00 \n \n Доставка кур'єром (75 Грн) \n Після замовлення на суму більше 150 грн. доставка безкоштовна, але алкогольні напої не входять в загальну вартість замовлення. ", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
