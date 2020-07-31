//
//  LXBaseLabel.swift
//  swiftPatient
//
//  Created by 康健科技 on 2020/1/8.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit

extension UILabel{
    
    func setNormalLabel(fount: CGFloat,title: String,textColor: UIColor) -> UILabel {
        
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: fount)
        label.textColor = textColor
        return label
    }
    
    func autoLabel(laebl:UILabel,lineHeight:CGFloat){
        laebl.numberOfLines=0
        laebl.lineBreakMode = NSLineBreakMode.byWordWrapping
        let text:String = laebl.text!//获取label的text
        laebl.attributedText = self.getAttributeStringWithString(text, lineSpace: lineHeight)
        let fontSize = CGSize(width: laebl.frame.width, height: laebl.font.lineHeight)
        let rect:CGSize = text.boundingRect(with: fontSize, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: laebl.font!], context: nil).size;
        laebl.frame = CGRect(x:laebl.frame.origin.x,y:laebl.frame.origin.y+12,width: rect.width, height: rect.height)
        laebl.sizeToFit()
    }
    //设置行间距
    fileprivate func getAttributeStringWithString(_ string: String,lineSpace:CGFloat
        ) -> NSAttributedString{
        let attributedString = NSMutableAttributedString(string: string)
        let paragraphStye = NSMutableParagraphStyle()
        //调整行间距
        paragraphStye.lineSpacing = lineSpace
        let rang = NSMakeRange(0, CFStringGetLength(string as CFString?))
        attributedString .addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStye, range: rang)
        return attributedString
    }
    
}
