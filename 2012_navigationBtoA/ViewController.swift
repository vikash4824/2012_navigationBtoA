//
//  ViewController.swift
//  2012_navigationBtoA
//
//  Created by mamidisetty Vikash on 23/02/21.
//

import UIKit

class ViewController: UIViewController {
    var actor:ViewController!
    
    var person1 = [[Actors]]()
    var person2 = [[MovieDetais]]()
    
    var submitButton:UIButton!
    var mainScroll:UIScrollView!
    var firstview:UIView!
    var secondView:UIView!
    var actorNameTF:UITextField!
    var actorIndustryTF:UITextField!
    var actorAgeTF:UITextField!
    var actorDetailsLB:UILabel!
    var actorSubmitBT:UIButton!
    var movieLableLB:UILabel!
    var movieTextLB:UILabel!
    var datelableLB:UILabel!
    var dateTextLB:UILabel!
    var heroLableLB:UILabel!
    var heroTextLB:UILabel!
    var secondScrollView:UIScrollView!
    var secondview1:UIView!
    var Header:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setups()
        
        actorSubmitBT.addTarget(self, action: #selector(saveDate), for: UIControl.Event.touchUpInside)
        
    }

    func setups()  {
        
        mainScroll = UIScrollView()
        mainScroll.frame = view.frame
        mainScroll.contentSize = CGSize(width: view.frame.width, height: 2000)
        mainScroll.backgroundColor = UIColor(patternImage: UIImage(named: "242-2427985_lock-screen-iphone-11-pro-max-wallpaper-rockstar.jpg")!)
        mainScroll.layer.cornerRadius = 10
        view.addSubview(mainScroll)

        firstview=UIView()
        firstview.frame = CGRect(x: 20, y:120, width: 374, height: 288)
        firstview.backgroundColor = UIColor(white: 1, alpha: 0.5)
        firstview.layer.cornerRadius = 10
        
        mainScroll.addSubview(firstview)
        
      Header = UILabel()
        Header.frame = CGRect(x: 120, y: 10, width: 250, height: 150)
        Header.text = "Actor Details"
        Header.textColor = UIColor.systemRed
        Header.font = UIFont.boldSystemFont(ofSize: 30)
        mainScroll.addSubview(Header)
        
        actorNameTF = UITextField()
        actorNameTF.frame = CGRect(x: 19, y: 48, width: 336, height: 48)
        actorNameTF.backgroundColor = UIColor.white
        actorNameTF.layer.cornerRadius = 10
        actorNameTF.layer.shadowOpacity = 1
        actorNameTF.layer.shadowOffset = .zero
        actorNameTF.layer.shadowRadius = 10
        actorNameTF.placeholder = "Enter Actor Name"
        actorNameTF.textAlignment = .center
        firstview.addSubview(actorNameTF)
        
        actorIndustryTF = UITextField()
        actorIndustryTF.frame = CGRect(x: 19, y: 102, width: 336, height: 48)
        actorIndustryTF.backgroundColor = UIColor.white
        actorIndustryTF.layer.cornerRadius = 10
        actorIndustryTF.layer.shadowOpacity = 1
        actorIndustryTF.layer.shadowOffset = .zero
        actorIndustryTF.layer.shadowRadius = 10
        actorIndustryTF.placeholder = "Enter Industry"
        actorIndustryTF.textAlignment = .center
        firstview.addSubview(actorIndustryTF)
        
        actorAgeTF = UITextField()
        actorAgeTF.frame = CGRect(x: 19, y: 156, width: 336, height: 48)
        actorAgeTF.backgroundColor = UIColor.white
        actorAgeTF.layer.cornerRadius = 10
        actorAgeTF.layer.shadowOpacity = 1
        actorAgeTF.layer.shadowOffset = .zero
        actorAgeTF.layer.shadowRadius = 10
        actorAgeTF.placeholder = "AGE"
        actorAgeTF.keyboardType = UIKeyboardType.decimalPad
        actorAgeTF.textAlignment = .center
        firstview.addSubview(actorAgeTF)
        
        actorDetailsLB = UILabel()
        actorDetailsLB.frame = CGRect(x: 125, y: 8, width: 148, height: 32)
        actorDetailsLB.backgroundColor = UIColor(white: 1, alpha: 0)
        actorDetailsLB.textAlignment = .center
        actorDetailsLB.text = "Actor Details"
        actorDetailsLB.textColor = UIColor.black
        firstview.addSubview(actorDetailsLB)
        
        actorSubmitBT = UIButton()
        actorSubmitBT.frame = CGRect(x: 115, y: 222, width: 130, height: 50)
        actorSubmitBT.backgroundColor = UIColor.systemTeal
        actorSubmitBT.layer.cornerRadius = 15
        actorAgeTF.layer.shadowOpacity = 1
        actorAgeTF.layer.shadowOffset = .zero
        actorAgeTF.layer.shadowRadius = 10
        actorSubmitBT.setTitle("SUBMIT", for: UIControl.State.normal)
        actorSubmitBT.setTitleColor(.black, for: .normal)
        firstview.addSubview(actorSubmitBT)
        
        
        secondview1 = UIView()
        secondview1.frame = CGRect(x: 20, y: 506, width: 374, height: 288)
        secondview1.backgroundColor = UIColor(white: 0, alpha: 0.5)
        mainScroll.addSubview(secondview1)
        
        secondScrollView = UIScrollView()
        secondScrollView.frame = CGRect(x: 20, y: 506, width: Int(self.view.frame.width), height: 288)
        secondScrollView.contentSize = CGSize(width: view.frame.width, height: 2000)
        mainScroll.addSubview(secondScrollView)
        
        var pos = 0
        for i in 0..<person2.count{
            
          
        secondView = UIView()
        secondView.frame = CGRect(x: 8, y: 10+pos, width:370 , height: 150
        )
            
        
            
        secondScrollView.addSubview(secondView)
            
            
        movieLableLB = UILabel()
        movieLableLB.frame = CGRect(x: 8, y: 69, width: 106, height: 21)
        movieLableLB.adjustsFontSizeToFitWidth = true
        movieLableLB.numberOfLines = 0
        movieLableLB.font = UIFont.boldSystemFont(ofSize: 18)
        movieLableLB.text = "Movie Name"
        movieLableLB.textAlignment = .right
        movieLableLB.textColor = UIColor.black
        secondView.addSubview(movieLableLB)
        
        movieTextLB = UILabel()
        movieTextLB.frame = CGRect(x: 133, y: 69, width: 235, height: 21)
        movieTextLB.adjustsFontSizeToFitWidth = true
        movieTextLB.numberOfLines = 0
        movieTextLB.font = UIFont.boldSystemFont(ofSize: 18)
        movieTextLB.textAlignment = .left
        movieTextLB.textColor = UIColor.black
        movieTextLB.backgroundColor = UIColor.systemYellow
            movieTextLB.text = person2[i][0].movieName
        secondView.addSubview(movieTextLB)
        
        datelableLB = UILabel()
        datelableLB.frame = CGRect(x: 8, y: 126, width: 106, height: 21)
        datelableLB.adjustsFontSizeToFitWidth = true
        datelableLB.numberOfLines = 0
        datelableLB.font = UIFont.boldSystemFont(ofSize: 18)
        datelableLB.text = "Release Year"
        datelableLB.textAlignment = .right
        datelableLB.textColor = UIColor.black
        secondView.addSubview(datelableLB)
        
        dateTextLB = UILabel()
        dateTextLB.frame = CGRect(x: 133, y: 126, width: 235, height: 21)
        dateTextLB.adjustsFontSizeToFitWidth = true
        dateTextLB.numberOfLines = 0
        dateTextLB.font = UIFont.boldSystemFont(ofSize: 18)
        dateTextLB.textAlignment = .left
        dateTextLB.textColor = UIColor.black
        dateTextLB.backgroundColor = UIColor.systemYellow
            dateTextLB.text = person2[i][0].year
        secondView.addSubview(dateTextLB)
        
        
        heroLableLB = UILabel()
        heroLableLB.frame = CGRect(x: 8, y: 183, width: 106, height: 21)
        heroLableLB.adjustsFontSizeToFitWidth = true
        heroLableLB.numberOfLines = 0
        heroLableLB.font = UIFont.boldSystemFont(ofSize: 18)
        heroLableLB.text = "Hero Name"
        heroLableLB.textAlignment = .right
        heroLableLB.textColor = UIColor.black
        secondView.addSubview(heroLableLB)
        
        heroTextLB = UILabel()
        heroTextLB.frame = CGRect(x: 133, y: 183, width: 235, height: 21)
        heroTextLB.adjustsFontSizeToFitWidth = true
        heroTextLB.numberOfLines = 0
        heroTextLB.font = UIFont.boldSystemFont(ofSize: 18)
        heroTextLB.textAlignment = .left
        heroTextLB.textColor = UIColor.black
        heroTextLB.backgroundColor = UIColor.systemYellow
        secondView.addSubview(heroTextLB)
            heroTextLB.text = person2[i][0].heroName
            pos = pos + 300
        }
        
    }
    @objc func saveDate()
    {
        if (actorNameTF.text!.count >= 3 && actorIndustryTF.text!.count >= 3 && actorAgeTF.text!.count >= 2) {
            person1.append([Actors(Name: actorNameTF.text!, Industry: actorIndustryTF.text!, Age: actorAgeTF.text!)])
            let DVC = storyboard?.instantiateViewController(identifier: "Movie") as! Movie
            DVC.person1 = self.person1
            DVC.modalPresentationStyle = .fullScreen
            present(DVC, animated: true)
                {
                DVC.actor = self
                }
        }
       
    
    }
}

