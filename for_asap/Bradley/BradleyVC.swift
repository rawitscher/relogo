//
//  BradleyVC.swift

import UIKit

import Foundation

import AVFoundation

import AVKit

import SDWebImage

class BradleyVC: UIViewController,  UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    let screenQ: CGRect = UIScreen.main.bounds

    var searchCountry = UILabel()
    
    var theleyer = leyer()
    
    var bottom = Bottomer()
    
    var mageray = [String]()
    
     var cray = [String]()
    
    var bouta = Bool()
    
    @IBOutlet weak var tblContent: UITableView!
    
    
     let gradient: CAGradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        self.view.backgroundColor = UIColor.clear
        
        
        let colorTop = UIColor(red: 41.0/255.0, green: 166.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        //UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        
        
        
        let colorBottom = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        gradient.frame = self.view.bounds
        
        gradient.colors = [colorBottom.cgColor, colorTop.cgColor]
        
        gradient.locations = [0.05, 0.3]
        
             //   gradient.startPoint = CGPoint.init(x: 0, y: 0.05)
        //
              //  gradient.endPoint = CGPoint.init(x: 1, y: 0.05)
        //
        
        self.view.layer.insertSublayer(gradient, at: 0)
        
        
        
        self.talbeThings()
        
        
        bottom.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.92, width: self.screenQ.width , height: self.screenQ.height * 0.08)
        
        self.view.addSubview(bottom)
        
        bottom.profile.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letsprofile)))
        
        bottom.profile.isUserInteractionEnabled = true
        
        
        
        bottom.add.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letsplayadd)))
        
        bottom.add.isUserInteractionEnabled = true
        


        
        
        self.mageray = ["https://unsplash.com/search/photos/ghana?photo=EDGMza4RMZc", "https://unsplash.com/?photo=vXpcpTl2Tt4", "https://unsplash.com/?photo=ALBc326eGas", "https://unsplash.com/search/city?photo=RA5ntyyDHlw", "https://unsplash.com/search/street?photo=c7jn_0eWVwQ", "https://unsplash.com/search/street?photo=cdBSNjP_v0w"]
        
        self.cray = ["Ghana", "Trinidad & Tobago", "★★★★", "Malta", "Japan", "★★★" ]

        // Do any additional setup after loading the view.
    }

    
    
    func letsprofile( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "prof") as? ProfileVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }

    
    func talbeThings() {
        
        
        
        
        tblContent.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.03, width: self.screenQ.width , height: self.screenQ.height * 0.89)
        
        
        
        
        
        tblContent.delegate = self
        
        tblContent.dataSource = self
        
        tblContent.rowHeight = self.screenQ.height * 0.55
        
        tblContent.allowsSelection = true
        
        tblContent.backgroundColor = UIColor.clear
        
        
        tblContent.separatorColor = UIColor.clear
        
        tblContent.showsVerticalScrollIndicator = false
        
        tblContent.showsHorizontalScrollIndicator = false
        
        tblContent.contentInset.top = self.screenQ.height * 0.21
        
        // tblContent.contentInset = UIEdgeInsetsMake(self.screenQ.height * 0.1, 0, 0, 0)
        
        self.tblContent.removeFromSuperview()
        
        self.view.addSubview(tblContent)
        
        
        theleyer.frame = CGRect.init(x: 0, y: -self.screenQ.height * 0.1, width: self.screenQ.width , height: self.screenQ.height * 0.08)
        
        self.tblContent.addSubview(theleyer)
        
        searchCountry.frame = CGRect.init(x:self.screenQ.width * 0.05, y: -self.screenQ.height * 0.2, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.08)
        
        searchCountry.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.4)
        
        searchCountry.font = UIFont.init(name: "AvenirNext-Medium", size: 15)
        
        searchCountry.layer.cornerRadius = 2
        
        searchCountry.textAlignment = .center
        
        searchCountry.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.8)
        
        searchCountry.text = "search country"
        
        searchCountry.clipsToBounds = true
        
        self.tblContent.addSubview(self.searchCountry)

        
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == tblContent {
            
            print(tblContent.contentOffset.y)
            
            if tblContent.contentOffset.y > 1 {
                
                self.forbouta()
                
               
                
                
            }
            
            
            if tblContent.contentOffset.y < 0 {
                
                
                self.otherbouta()
                
            }

            
            
        }
    }
    
    func otherbouta() {
        
        
        if bouta == true {
            
            self.view.layer.insertSublayer(gradient, at: 0)
            
            self.view.backgroundColor = UIColor.clear
            
            UIApplication.shared.statusBarStyle = .lightContent
            

            bouta = false
            
        }
        
        
    }
    
    func forbouta() {
        
        
        if bouta == false {
            
            self.view.layer.sublayers?.remove(at: 0)
            
            self.view.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
            
            UIApplication.shared.statusBarStyle = .default
            
            bouta = true
            
        }
        
    }
    
    func randInRange(min: Int, max: Int) -> Int {
        // arc4random_uniform(_: UInt32) returns UInt32, so it needs explicit type conversion to Int
        // note that the random number is unsigned so we don't have to worry that the modulo
        // operation can have a negative output
        return  Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    
    func letsplaythis( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "coma") as? ComVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }
    
    
    
    func letsplayadd( ) {
        
//        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "add") as? AddVC {
//            
//            if let navigator = navigationController {
//                navigator.pushViewController(viewController, animated: true)
//            }
//        }
        
        self.performSegue(withIdentifier: "add", sender: self)
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var ret = Int()
        
        //
        ret = 6
        
        
        return ret
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0.01
    }
    
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        if type(of: view) === UITableViewHeaderFooterView.self {
            (view as! UITableViewHeaderFooterView).backgroundView!.backgroundColor = UIColor.clear
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.letsplaythis()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CellBrad!
        
        cell = tableView.dequeueReusableCell(withIdentifier:"brad", for: indexPath) as! CellBrad
        
        
        cell.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width , height: self.screenQ.height * 0.2)
        

        var themage = mageray[indexPath.row]
        
       // cell.firstpic.sd_setImage(with: NSURL.init(string: themage) as! URL)
        
        if indexPath.row == 0 || indexPath.row == 3 {
            
            cell.firstpic.image = UIImage.init(named: "a")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.bold(text: "$5000").normal(text: "  per week")
            
        //    cell.firstlike.attributedText = formattedStringing
            
            cell.firstlike.text = "$5000 weekly"
            
        }
        
        if indexPath.row == 1 || indexPath.row == 4 {
            
            cell.firstpic.image = UIImage.init(named: "b")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.bold(text: "$9000").normal(text: "  per week")
            
            cell.firstlike.text = "$9000 weekly"
            
        }
        
        if indexPath.row == 2 || indexPath.row == 5 {
            
            cell.firstpic.image = UIImage.init(named: "c")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.bold(text: "$2000").normal(text: "  per week")
            
          //  cell.firstlike.attributedText = formattedStringing
            
           cell.firstlike.text = "$2000 weekly"
            
        }
        
        
        
             cell.flagg.image = UIImage.init(named: "e6")
            
//        let formattedStringing = NSMutableAttributedString()
//        formattedStringing.bold(text: "Gregory Achibold").normal(text: "  Chief Marketing Officer @ Michelletti, LLC")
//        
//          cell.namcountry.attributedText = formattedStringing
//

        let formattedStringin = NSMutableAttributedString()
        formattedStringin.country(text: cray[indexPath.row])        
        cell.thecountry.attributedText = formattedStringin
        
        
        
        cell.thecap.text = "A thick blanket and flat shoes • Take malaria prophylaxis a week before coming • Four thousand dollars • a portable battery for your laptop • A sense of humor • A local you can trust to answer your questions"
        
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
