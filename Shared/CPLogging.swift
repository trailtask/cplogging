//
//  CPLogging.swift
//  CustomLogging
//
//  Created by trial on 7/8/19.
//

import Foundation

public class CPLogging {
    
    //MARK: Singleton Instance
    static let instance: CPLogging = CPLogging()
    
    private init() {}
    
    //MARK: Properties
    private var isLogEnabled: Bool! = false
    private var isTimestampShown: Bool! = false
    
    //MARK: Function
    //Setup
    public func setupLogging(isLogEnabled: Bool = true, isTimestampShown: Bool = true) {
        self.isLogEnabled = isLogEnabled
        self.isTimestampShown = isTimestampShown
    }
    
    public func debugInfo() {}
    
    public func debugVerbose() {}
    
    public func debugWarning() {}
    
    public func debugError() {}
    
    public func debugSuccess() {}
}
