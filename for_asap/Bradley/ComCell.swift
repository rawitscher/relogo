//
//  ComCell.swift
// 
import UIKit

class ComCell: UITableViewCell {

    var thepic = UIImageView()
    
    
    var title = UILabel()
    
    
    
    var thewords = UILabel()
    
    
    
    var othercover = UIView()
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        
        
    }
    
    
    
    override func layoutSubviews() {
        
        
        self.backgroundColor = UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        //UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        
        
        
        
        
        
        title.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.025, width: self.bounds.width * 0.75, height: self.bounds.height * 0.25)
        
        title.textColor = UIColor.black
        
       // title.numberOfLines = 2
        
        title.textAlignment = .left
        
        
        title.font = UIFont.init(name: "Avenir-Medium", size: 15)
        
        title.clipsToBounds = true
        
        
        
        
        
        
        
        thewords.frame = CGRect.init(x: self.bounds.width * 0.2, y: self.bounds.height * 0.32, width: self.bounds.width * 0.775, height: self.bounds.height * 0.55)
        
        thewords.textColor = UIColor.black
        
        thewords.numberOfLines = 3
        
        thewords.textAlignment = .left
        
        //        let formattedStringing = NSMutableAttributedString()
        //        formattedStringing.spacio(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
        //
        //        thewords.attributedText = formattedStringing
        
        thewords.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
        
        
        
        thewords.font = UIFont.init(name: "AvenirNext-Regular", size: 13)
        
        thewords.clipsToBounds = true
        
        
        
        thepic.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.3, width: self.bounds.width * 0.1, height: self.bounds.width * 0.1)
        
        thepic.layer.cornerRadius = self.bounds.width * 0.05
        
        
        
        thepic.contentMode = .scaleAspectFill
        
        thepic.clipsToBounds = true
        
        
        
        
        
        
        othercover.frame = CGRect.init(x: self.bounds.width * 0.015, y: self.bounds.height * 0.02, width: self.bounds.width * 0.97, height: self.bounds.height * 0.96)
        
        //CGRect.init(x: self.bounds.width * 0.1, y: self.bounds.height - 2.5, width: self.bounds.width * 0.8, height: 2.5)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.white
        
        //UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 0.8)
        
        othercover.clipsToBounds = true
        
        
        
        
        
        //
        
        
        self.contentView.addSubview(othercover)
        
        
        
        
        self.contentView.addSubview(title)
        
        self.contentView.addSubview(thewords)
        
        self.contentView.addSubview(thepic)
        
        
        
        
        
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
