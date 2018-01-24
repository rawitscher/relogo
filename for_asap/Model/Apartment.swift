//
//  Apartment.swift

import UIKit

import Parse
import Cent
import DateTools

class Apartment: PFObject, PFSubclassing {
    override class func initialize(){
        struct Static {
            static var onceToken : dispatch_once_t = 0
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    class func parseClassName() -> String{
        return "Apartment"
    }
    @NSManaged var onlinerID : Int
    @NSManaged var priceUSD : Int
    @NSManaged var priceBYR : Int
    @NSManaged var userAddress : String
    @NSManaged var url : String
    @NSManaged var photoUrl : String
    @NSManaged var owner : Bool
    @NSManaged var rentType : String
    @NSManaged var createdAtOnliner : Date
    @NSManaged var updatedAtOnliner : Date
    @NSManaged var location : PFGeoPoint
    
    class func findAll() -> BFTask {
        return Apartment.query()!.findObjectsInBackground()
    }
    
    func roomsText() -> String {
        var roomsText = NSLocalizedString("room", comment: "Apartment rent type with 1 room only not full flat")
        if self.rentType =~ "_room" {
            let roomCountText = Regex.init("(\\d+)_room").groups(self.rentType).first()!.last()!
            if let roomsCount = Int(roomCountText) {
//                let roomsTextSuffix = roomsCount > 1 ? "s" : ""
//                let nonlocalizedString = "\(roomsCount) room\(roomsTextSuffix)"
//                roomsText = NSString.localizedStringWithFormat("%zd room(s)", roomsCount) as String
                  roomsText = String.localizedStringWithFormat(NSLocalizedString("%zd room(s)", comment: ""), roomsCount)
//                roomsText = NSLocalizedString(nonlocalizedString, comment: "Dynamic value of rooms count on Apartment class to get roomsText()")
            }
        }
        return roomsText
    }
    
    func timeAgoText() -> String {
//            let dateFmt = NSDateFormatter()
//            dateFmt.timeZone = NSTimeZone.defaultTimeZone()
//            dateFmt.dateFormat = "HH:mm dd.MM.yy"
//
//            self.timeLabel.text = dateFmt.stringFromDate(apartment.apartmentAddedAt)

        return updatedAtOnliner.timeAgoSinceNow()
    }
}
