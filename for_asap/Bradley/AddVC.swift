//
//  AddVC.swift

import UIKit

import Foundation

import AVFoundation

import AVKit

import SDWebImage

class AddVC: UIViewController {
    
    let screenQ: CGRect = UIScreen.main.bounds
    
    var newview = UIView()
    
    var thecon = TextField()

    var addSug = TextField()
    
    var addmoney = TextField()
    
     var goback = UILabel()
    
    var selectype = adding()
    
    var firstline = UIView()
    
    var secondLine = UIView()
    
    var thirdLine = UIView()
    
     let gradient: CAGradientLayer = CAGradientLayer()
    
    var blurView = UIVisualEffectView()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.statusBarStyle = .default
        
        self.view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        
        let colorTop = UIColor(red: 8.0/255.0, green: 106.0/255.0, blue: 106.0/255.0, alpha: 1.0)
        //UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        
        
        
        let colorBottom = UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
        
        
        gradient.frame = self.view.bounds
        
        gradient.colors = [colorBottom.cgColor, colorTop.cgColor]
        
        gradient.locations = [0.35, 0.9]
        
        //   gradient.startPoint = CGPoint.init(x: 0, y: 0.05)
        //
        //  gradient.endPoint = CGPoint.init(x: 1, y: 0.05)
        //
        
      //  self.view.layer.insertSublayer(gradient, at: 0)

        
        
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.dark)
        // 2
        
        blurView = UIVisualEffectView(effect: darkBlur)
        
        
        // var dg = UIVibrancyEffect(forBlurEffect: darkBlur)
        blurView.frame = screenQ
        
        blurView.clipsToBounds = true
        
        
        // 3
      //  self.view.addSubview(blurView)
        
        
        
        goback.frame = CGRect.init(x: self.screenQ.width * 0.46, y: self.screenQ.height * 0.04, width: self.screenQ.width * 0.08, height: self.screenQ.width * 0.08)
        
        goback.textColor = UIColor.black
        
        goback.textAlignment = .center
        
        goback.text = "╳"
        
        goback.font = UIFont.init(name: "AvenirNext-Heavy", size: 18)
        
        
        self.view.addSubview(self.goback)

        
        goback.isUserInteractionEnabled = true
        
        goback.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.leave)))
        
        
        
        newview.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.1, width: self.screenQ.width , height: self.screenQ.height * 0.39)
        
        newview.backgroundColor = UIColor.white
        
        
     
        
        
        
        newview.clipsToBounds = true
        
        self.view.addSubview(self.newview)
        
       
        
        
        thecon.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.1, width: self.screenQ.width , height: self.screenQ.height * 0.08)
        
        
        
        thecon.textColor = UIColor.darkGray
        
        thecon.tintColor = UIColor.darkGray
        
        thecon.textAlignment = .left
        
        thecon.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        thecon.clipsToBounds = true
        
        thecon.attributedPlaceholder = NSAttributedString.init(string: "search country", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.2)])
        
        thecon.tintColor = UIColor.white
        
        
        self.view.addSubview(self.thecon)
        
        
        
        
        
        selectype.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.18, width: self.screenQ.width   , height: self.screenQ.height * 0.15)
        
       
        
        selectype.clipsToBounds = true
        
        self.view.addSubview(self.selectype)
        
        
        
        
        
        addmoney.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.33, width: self.screenQ.width  , height: self.screenQ.height * 0.08)
        
         addmoney.backgroundColor = UIColor.white
        
        addmoney.layer.cornerRadius = 2
        
        addmoney.textColor = UIColor.darkGray
        
        
        addmoney.textAlignment = .left
        
        addmoney.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        addmoney.clipsToBounds = true
        
        addmoney.attributedPlaceholder = NSAttributedString.init(string: "living expenses per week in dollars", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.2)])
        
        addmoney.tintColor = UIColor.darkGray
        
        
        
        self.view.addSubview(self.addmoney)
        
        
        
        
        
        
        
        
    
        
        
        
        addSug.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.41, width: self.screenQ.width   , height: self.screenQ.height * 0.08)
        
               addSug.textColor = UIColor.darkGray
        
        
        addSug.textAlignment = .left
        
        addSug.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        addSug.clipsToBounds = true
        
        addSug.attributedPlaceholder = NSAttributedString.init(string: "add note 1 of 5", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.2)])
        
        addSug.tintColor = UIColor.darkGray
        
        
        
        self.view.addSubview(self.addSug)
        
        
        firstline.frame = CGRect.init(x: self.screenQ.width * 0.05, y: self.screenQ.height * 0.18, width: self.screenQ.width * 0.95 , height: 1.5)
        
        
        firstline.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        firstline.layer.cornerRadius = 0.75
        
        
        firstline.clipsToBounds = true
        
        self.view.addSubview(self.firstline)

        
        secondLine.frame = CGRect.init(x: self.screenQ.width * 0.05, y: self.screenQ.height * 0.33, width: self.screenQ.width * 0.95 , height: 1.5)
        
        
        secondLine.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        secondLine.layer.cornerRadius = 0.75
        
        
        secondLine.clipsToBounds = true
        
        self.view.addSubview(self.secondLine)
        
        
        thirdLine.frame = CGRect.init(x: self.screenQ.width * 0.05, y: self.screenQ.height * 0.41, width: self.screenQ.width * 0.95 , height: 1.5)
        
        
        thirdLine.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        thirdLine.layer.cornerRadius = 0.75
        
        
        thirdLine.clipsToBounds = true
        
        self.view.addSubview(self.thirdLine)
        


       
        
        
        
        

        
        
        
        
        
        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.dismisser)))
        

        // Do any additional setup after loading the view.
    }
    
    
    func dismisser() {
        
        self.view.endEditing(true)
    }

    
    
    func leave() {
        
        UIApplication.shared.isStatusBarHidden = false
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        
        self.dismiss(animated: true, completion: nil)
        
//        if let nav = self.navigationController {
//            nav.popViewController(animated: true)
//        } else {
//            self.dismiss(animated: true, completion: nil)
//        }
        
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
