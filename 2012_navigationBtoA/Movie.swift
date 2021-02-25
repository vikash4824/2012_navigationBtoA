//
//  Movie.swift
//  2012_navigationBtoA
//
//  Created by mamidisetty Vikash on 24/02/21.
//

import UIKit

class Movie : UIViewController {
  
    var person1 = [[Actors]]()
   
    var actor:ViewController!
    
    var submitButton : UIButton!
    var mainScroll : UIScrollView!
    var firstview : UIView!
    var secondView : UIView!
    var movieNameTF : UITextField!
    var dateTF : UITextField!
    var heroTF : UITextField!
    var movieDetailsLB : UILabel!
    var movieSubmitBT : UIButton!
    var actorNameLB : UILabel!
    var actorNameTextLB : UILabel!
    var actorIndustryLB : UILabel!
    var actorIndustryTextLB : UILabel!
    var actorAgeLB : UILabel!
    var actorAgeTextLB : UILabel!
    var backButton : UIButton!
    var secondScrollView : UIScrollView!
    var secondview1 : UIView!
    var Header:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
  
       movieDetails()
        movieSubmitBT.addTarget(self, action: #selector(gettingdata), for: UIControl.Event.touchUpInside)

    }
    func movieDetails()
    {
        mainScroll = UIScrollView()
        mainScroll.frame = view.frame
        
        mainScroll.contentSize = CGSize(width: view.frame.width, height: 2000)
     mainScroll.backgroundColor = UIColor(patternImage: UIImage(named: "screen2.jpg")!)
        view.addSubview(mainScroll)
        
      
        
        backButton = UIButton(type: UIButton.ButtonType.system)
        backButton.frame = CGRect(x:5, y: 10, width: ((view.frame.width-10)/2)-10, height: 45)
        backButton.layoutMargins.right = 5
        backButton.setTitle("Back", for: UIControl.State.normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        backButton.setTitleColor(.black, for: UIControl.State.normal)
        backButton.backgroundColor = UIColor.systemPink
        backButton.layoutMargins.left=5
        backButton.layoutMargins.right=5
        backButton.layer.cornerRadius = 10
        backButton.layer.borderColor = UIColor.black.cgColor
        backButton.layer.borderWidth = 5
        backButton.layer.shadowColor = UIColor.black.cgColor
        backButton.layer.shadowOpacity = 1
        backButton.layer.shadowOffset = .zero
        backButton.layer.shadowRadius = 10
        backButton.addTarget(self, action: #selector(sas), for: UIControl.Event.touchUpInside)
        mainScroll.addSubview(backButton)
        
        Header = UILabel()
          Header.frame = CGRect(x: 120, y: 10, width: 250, height: 150)
        //        Header
        Header.text = "Movie Details"
        Header.backgroundColor = UIColor(white: 1, alpha: 0)
        Header.textColor = UIColor.systemRed
        Header.font = UIFont.boldSystemFont(ofSize: 30)
          mainScroll.addSubview(Header)

        firstview=UIView()
        firstview.frame = CGRect(x: 20, y:120, width: 374, height: 288)
        firstview.backgroundColor = UIColor(white: 1, alpha: 0.5)
        firstview.layer.cornerRadius = 10
        firstview.layer.shadowOpacity = 1
        firstview.layer.shadowOffset = .zero
        firstview.layer.shadowRadius = 10
        
        mainScroll.addSubview(firstview)
        
      
        
        movieNameTF = UITextField()
        movieNameTF.frame = CGRect(x: 19, y: 48, width: 336, height: 48)
        movieNameTF.textAlignment = .center
        movieNameTF.adjustsFontSizeToFitWidth = true
        movieNameTF.backgroundColor = UIColor.white
        movieNameTF.layer.cornerRadius = 10
        movieNameTF.layer.shadowOpacity = 1
        movieNameTF.layer.shadowOffset = .zero
        movieNameTF.layer.shadowRadius = 10
        movieNameTF.placeholder = "Movie Name"
        movieNameTF.textAlignment = .center
        firstview.addSubview(movieNameTF)
        
        dateTF = UITextField()
        dateTF.frame = CGRect(x: 19, y: 102, width: 336, height: 48)
        dateTF.textAlignment = .center
        dateTF.adjustsFontSizeToFitWidth = true
        dateTF.layer.cornerRadius = 10
        dateTF.layer.shadowOpacity = 1
        dateTF.layer.shadowOffset = .zero
        dateTF.layer.shadowRadius = 10
        dateTF.placeholder = "Enter Year"
        dateTF.textAlignment = .center
        dateTF.keyboardType = UIKeyboardType.decimalPad
        dateTF.backgroundColor = UIColor.white
        firstview.addSubview(dateTF)
        
        heroTF = UITextField()
        heroTF.frame = CGRect(x: 19, y: 156, width: 336, height: 48)
        heroTF.textAlignment = .center
        heroTF.adjustsFontSizeToFitWidth = true
        heroTF.backgroundColor = UIColor.white
        heroTF.layer.cornerRadius = 10
        heroTF.layer.shadowOpacity = 1
        heroTF.layer.shadowOffset = .zero
        heroTF.layer.shadowRadius = 10
        heroTF.placeholder = "Hero Name"
        heroTF.textAlignment = .center
        firstview.addSubview(heroTF)
        
        movieDetailsLB = UILabel()
        movieDetailsLB.frame = CGRect(x: 115, y: 8, width: 148, height: 32)
        movieDetailsLB.backgroundColor = UIColor(white: 0, alpha: 0)
        movieDetailsLB.textAlignment = .center
        movieDetailsLB.adjustsFontSizeToFitWidth = true
        movieDetailsLB.numberOfLines = 0
        movieDetailsLB.font = UIFont.boldSystemFont(ofSize: 18)
        movieDetailsLB.text = "Movie Details"
        movieDetailsLB.textColor = UIColor.black
        firstview.addSubview(movieDetailsLB)
        
        movieSubmitBT = UIButton()
        movieSubmitBT.frame = CGRect(x: 115, y: 222, width: 130, height: 50)
        movieSubmitBT.backgroundColor = UIColor.systemTeal
        movieSubmitBT.layer.cornerRadius = 10
        movieSubmitBT.setTitle("SUBMIT", for: UIControl.State.normal)
        movieSubmitBT.setTitleColor(.black, for: .normal)
        firstview.addSubview(movieSubmitBT)
        
        secondview1 = UIView()
        secondview1.frame = CGRect(x: 20, y: 506, width: 374, height: 288)
        secondview1.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        secondview1.layer.cornerRadius = 10
        secondview1.layer.shadowOpacity = 1
        secondview1.layer.shadowOffset = .zero
        secondview1.layer.shadowRadius = 10
    mainScroll.addSubview(secondview1)
        
     secondScrollView = UIScrollView()
        secondScrollView.frame = CGRect(x: 20, y: 506, width: Int(self.view.frame.width), height: 288) 
        secondScrollView.contentSize = CGSize(width: view.frame.width, height: 2000)
        mainScroll.addSubview(secondScrollView)
        
        var pos = 0
        for i in 0..<person1.count{
            
          
        secondView = UIView()
            secondView.frame = CGRect(x: 8, y: 10+pos, width: 360, height: 150)
            secondView.backgroundColor = UIColor(white: 1, alpha: 0.5)
            secondView.layer.cornerRadius = 10
            secondView.layer.shadowOpacity = 1
            secondView.layer.shadowOffset = .zero
            secondView.layer.shadowRadius = 10
        secondScrollView.addSubview(secondView)
        
        actorNameLB = UILabel()
        actorNameLB.frame = CGRect(x: 8, y: 30, width: 106, height: 21)
        actorNameLB.adjustsFontSizeToFitWidth = true
        actorNameLB.numberOfLines = 0
        actorNameLB.font = UIFont.boldSystemFont(ofSize: 18)
        actorNameLB.text = "Actor"
        actorNameLB.textAlignment = .right
        actorNameLB.textColor = UIColor.black
        secondView.addSubview(actorNameLB)
        
        actorNameTextLB = UILabel()
            actorNameTextLB.frame = CGRect(x: 133, y: 30, width: 200, height: 21)
        actorNameTextLB.adjustsFontSizeToFitWidth = true
        actorNameTextLB.numberOfLines = 0
        actorNameTextLB.font = UIFont.boldSystemFont(ofSize: 18)
        actorNameTextLB.textAlignment = .left
        actorNameTextLB.textColor = UIColor.black
            actorNameTextLB.layer.cornerRadius = 10
            actorNameTextLB.layer.shadowOpacity = 1
            actorNameTextLB.layer.shadowOffset = .zero
            actorNameTextLB.layer.shadowRadius = 10
        actorNameTextLB.backgroundColor = UIColor.systemYellow
        actorNameTextLB.text = person1[i][0].Name
        secondView.addSubview(actorNameTextLB)
        
        actorIndustryLB = UILabel()
        actorIndustryLB.frame = CGRect(x: 8, y: 55, width: 106, height: 21)
        actorIndustryLB.adjustsFontSizeToFitWidth = true
        actorIndustryLB.numberOfLines = 0
        actorIndustryLB.font = UIFont.boldSystemFont(ofSize: 18)
        actorIndustryLB.text = "Industry"
        actorIndustryLB.textAlignment = .right
        actorIndustryLB.textColor = UIColor.black
        secondView.addSubview(actorIndustryLB)
        
        actorIndustryTextLB = UILabel()
        actorIndustryTextLB.frame = CGRect(x: 133, y: 55, width: 200, height: 21)
        actorIndustryTextLB.adjustsFontSizeToFitWidth = true
        actorIndustryTextLB.numberOfLines = 0
        actorIndustryTextLB.font = UIFont.boldSystemFont(ofSize: 18)
        actorIndustryTextLB.textAlignment = .left
            actorIndustryTextLB.layer.cornerRadius = 10
            actorIndustryTextLB.layer.shadowOpacity = 1
            actorIndustryTextLB.layer.shadowOffset = .zero
            actorIndustryTextLB.layer.shadowRadius = 10
        actorIndustryTextLB.textColor = UIColor.black
        actorIndustryTextLB.backgroundColor = UIColor.systemYellow
            actorIndustryTextLB.text = person1[i][0].Industry
        secondView.addSubview(actorIndustryTextLB)
        
        
         actorAgeLB = UILabel()
         actorAgeLB.frame = CGRect(x: 8, y: 80, width: 106, height: 21)
         actorAgeLB.adjustsFontSizeToFitWidth = true
         actorAgeLB.numberOfLines = 0
         actorAgeLB.font = UIFont.boldSystemFont(ofSize: 18)
         actorAgeLB.text = "Age"
         actorAgeLB.textAlignment = .right
         actorAgeLB.textColor = UIColor.black
        secondView.addSubview( actorAgeLB)
        
         actorAgeTextLB = UILabel()
         actorAgeTextLB.frame = CGRect(x: 133, y: 80, width: 200, height: 21)
         actorAgeTextLB.adjustsFontSizeToFitWidth = true
         actorAgeTextLB.numberOfLines = 0
         actorAgeTextLB.font = UIFont.boldSystemFont(ofSize: 18)
         actorAgeTextLB.textAlignment = .left
            actorAgeTextLB.layer.cornerRadius = 10
            actorAgeTextLB.layer.shadowOpacity = 1
            actorAgeTextLB.layer.shadowOffset = .zero
            actorAgeTextLB.layer.shadowRadius = 10
        actorIndustryTextLB.textColor = UIColor.black
            actorIndustryLB.layer.masksToBounds = true
         actorAgeTextLB.textColor = UIColor.black
         actorAgeTextLB.backgroundColor = UIColor.systemYellow
            actorAgeTextLB.text = person1[i][0].Age
        secondView.addSubview( actorAgeTextLB)
            pos = pos + 170
        }
    }
    @objc func gettingdata()
    {
        if (movieNameTF.text!.count >= 3 && dateTF.text!.count >= 4 && heroTF.text!.count >= 4) {
            actor.person2.append([MovieDetais(movieName: movieNameTF.text!, year: dateTF.text!, heroName: heroTF.text!)])
            
           dismiss(animated: true, completion: nil)
            
            var pos = 0
            for i in 0..<actor.person2.count{
                
              
                actor.secondView = UIView()
                actor.secondView.frame = CGRect(x: 8, y: 10+pos, width: 360, height: 150)
                actor.secondView.backgroundColor = UIColor(patternImage: UIImage(named: "photo-1522092787785-60123fde65c4.jpeg")!)
                actor.secondScrollView.addSubview(actor.secondView)
                
             actor.movieLableLB = UILabel()
             actor.movieLableLB.frame = CGRect(x: 8, y: 30, width: 106, height: 21)
             actor.movieLableLB.adjustsFontSizeToFitWidth = true
             actor.movieLableLB.numberOfLines = 0
             actor.movieLableLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.movieLableLB.text = "Movie Name"
             actor.movieLableLB.textAlignment = .right
             actor.movieLableLB.textColor = UIColor.black
                actor.secondView.addSubview( actor.movieLableLB)
            
             actor.movieTextLB = UILabel()
             actor.movieTextLB.frame = CGRect(x: 133, y: 30, width: 200, height: 21)
             actor.movieTextLB.adjustsFontSizeToFitWidth = true
             actor.movieTextLB.numberOfLines = 0
             actor.movieTextLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.movieTextLB.textAlignment = .left
             actor.movieTextLB.textColor = UIColor.black
             actor.movieTextLB.backgroundColor = UIColor.systemYellow
                actor.movieTextLB.text = actor.person2[i][0].movieName
                actor.secondView.addSubview( actor.movieTextLB)
            
             actor.datelableLB = UILabel()
             actor.datelableLB.frame = CGRect(x: 8, y: 55, width: 106, height: 21)
             actor.datelableLB.adjustsFontSizeToFitWidth = true
             actor.datelableLB.numberOfLines = 0
             actor.datelableLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.datelableLB.text = "Release Year"
             actor.datelableLB.textAlignment = .right
             actor.datelableLB.textColor = UIColor.black
                actor.secondView.addSubview( actor.datelableLB)
            
             actor.dateTextLB = UILabel()
             actor.dateTextLB.frame = CGRect(x: 133, y: 55, width: 200, height: 21)
             actor.dateTextLB.adjustsFontSizeToFitWidth = true
             actor.dateTextLB.numberOfLines = 0
             actor.dateTextLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.dateTextLB.textAlignment = .left
             actor.dateTextLB.textColor = UIColor.black
             actor.dateTextLB.backgroundColor = UIColor.systemYellow
                actor.dateTextLB.text = actor.person2[i][0].year
                actor.secondView.addSubview( actor.dateTextLB)
            
            
             actor.heroLableLB = UILabel()
             actor.heroLableLB.frame = CGRect(x: 8, y: 80, width: 106, height: 21)
             actor.heroLableLB.adjustsFontSizeToFitWidth = true
             actor.heroLableLB.numberOfLines = 0
             actor.heroLableLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.heroLableLB.text = "Hero Name"
             actor.heroLableLB.textAlignment = .right
             actor.heroLableLB.textColor = UIColor.black
                actor.secondView.addSubview( actor.heroLableLB)
            
             actor.heroTextLB = UILabel()
             actor.heroTextLB.frame = CGRect(x: 133, y: 80, width: 200, height: 21)
             actor.heroTextLB.adjustsFontSizeToFitWidth = true
             actor.heroTextLB.numberOfLines = 0
             actor.heroTextLB.font = UIFont.boldSystemFont(ofSize: 18)
             actor.heroTextLB.textAlignment = .left
             actor.heroTextLB.textColor = UIColor.black
             actor.heroTextLB.backgroundColor = UIColor.systemYellow
                actor.secondView.addSubview( actor.heroTextLB)
                actor.heroTextLB.text = actor.person2[i][0].heroName
                pos = pos + 170
            }
        }
        
    }
    @objc func sas()
    {
        dismiss(animated: true) {
            
        }
    }
    
    
  
}
