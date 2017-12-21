//
//  MenuViewController.swift
//  SideOutMenu
//
//  Created by furkan elkatmis on 18.12.2017.
//  Copyright © 2017 furkan.elkatmis. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var menuArr: Array = [String]()
   var iconeImage: Array = [UIImage]()

    @IBOutlet weak var imgProfile: UIImageView!
    
    
//var iconeImage  = [[String:UIImage]]()
    override func viewDidLoad() {
        super.viewDidLoad()

menuArr = ["Kurumsal","Sonuclar","İletisim"]
iconeImage = [UIImage(named:"İletisim")!,UIImage(named:"Kurumsal")!,UIImage(named:"Sonuclar")!]

        imgProfile.layer.borderColor = UIColor.red.cgColor
        imgProfile.layer.borderWidth = 2
        imgProfile.layer.cornerRadius = 50
        imgProfile.layer.masksToBounds = false
        imgProfile.clipsToBounds = true





    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.





    }
    



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

return menuArr.count


    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell")as! MenuTableViewCell

       
        cell.lblMenuName.text! = menuArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let revealViewController:SWRevealViewController = self.revealViewController()
        let cell:MenuTableViewCell = tableView.cellForRow(at:indexPath) as! MenuTableViewCell
if cell.lblMenuName.text! == "iletisim"
{
    let mainStoryboard = UIStoryboard(name:"Main",bundle: nil)
    let desController = mainStoryboard.instantiateViewController(withIdentifier:"ViewController") as! ViewController

    let newFrontViewController = UINavigationController.init(rootViewController:desController)

    revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        if  cell.lblMenuName.text! == "Kurumsal"
        {
            let mainStoryboard = UIStoryboard(name:"Main",bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier:"iletisimViewController") as! iletisimViewController

            let newFrontViewController = UINavigationController.init(rootViewController:desController)

            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
    }











    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
