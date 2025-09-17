// The Swift Programming Language
// https://docs.swift.org/swift-book
import fastagwrapperios
import UIKit
 
public final class FastagSdkIos {
    public init() { }
   /// Open Fastag SDK
   public static func openFastag(
       from rootViewController: UIViewController,
       userId: String,
       vrn: String,
       vehicleVariant: String,
       theme: String,
        vin:String,
        userName:String,
        carImageUrl:String,
        pplName:String
   ) {
       FastagSdk.openFastag(
        from: rootViewController,
        userId: userId,
        vrn: vrn,
        vehicleVariant: vehicleVariant,
        theme: theme,
        vin: vin,
        userName:userName,
        carImageUrl:carImageUrl,
        pplName:pplName
       )
   }
}
