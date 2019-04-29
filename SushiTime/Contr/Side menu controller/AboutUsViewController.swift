//
//  AboutUsViewController.swift
//  SushiTime
//
//  Created by 1 on 28.04.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    

    @IBOutlet weak var firstText: UITextView!
    @IBOutlet weak var secondText: UITextView!
    @IBOutlet weak var thirdText: UITextView!
    @IBOutlet weak var aboutKitchen: UITextView!
    @IBOutlet weak var abouKitchenText: UITextView!
    @IBOutlet weak var ourContacts: UITextView!
    @IBOutlet weak var adressText: UITextView!
    @IBOutlet weak var telephoneNumber: UITextView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstText.text = "Суші у Львові на сьогодні стало чи не найпопулярнішою стравою, яку безперечно повинен попробувати кожен.Легке  поєднання морської риби, ніжного рису, азіатських приправ, таких як соєвий соус та васабі - роблять страву   збалансованою та довершеною. У новому суші - барі Sushi Time, що знаходиться на Торф'яна 8А напроти ТЦ Арсен Ви зможете поласувати у приємній невимушеній атмосфері, обравши суші чи піцу."

        secondText.text = "Суші - це зазвичай майстерно загорнутий рис у листя пресованих водоростей Нор. Начинкою можуть слугувати: морська риба, крабове м'ясо, ікра лососева або ікра Масаго, також додають огірок, авокадо, водорості Вакаме тощо. Часто основною складовою суші є вершковий сир Філадельфія - це сир із ніжною кремовою консистенцією,  виготовлений із вершків, який легко компонується із всіма складниками, не перебиваючи їхній смак, а навпаки - підкреслюючи його."
        
        thirdText.text = "Виїзне приготування суші - це чудова можливість вразити своїх гостей та зробити своє свято неповторним. Замініть традиційні закуски із фуршетного столу на легкі та смачні суші. Команда Sushi Time зможе на висоті організувати обслуговування бенкету, фуршету,  корпоративної вечірки у будь якому місці проведення заходу. За деталями звертайтесь за номером:"
        
        aboutKitchen.text = "Про кухню"
        
        abouKitchenText.text = "Команда Sushi Time обслужить вас на найвищому рівні,тільки у нас ви зможете поласувати у приємній невимушеній атмосфері, обравши роли, маки чи нігірі."
        
        ourContacts.text = "Наші контакти"
        
        adressText.text = "вулиця Торф'яна, 8А"
        
        telephoneNumber.text = "(063) 018 59 79 (098) 713 76 16"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cartButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController")as! CartViewController
        self.navigationController?.pushViewController(CartVC, animated: true)
    }
    


}
