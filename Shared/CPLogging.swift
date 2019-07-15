//
//  CPLogging.swift
//  CustomLogging
//
//  Created by trial on 7/8/19.
//

import Foundation

public class CPLogging {
    
    fileprivate enum LogType: Int {
        case info = 0
        case verbose
        case warning
        case error
        case successs
    }
    
    //MARK: Singleton Instance
    public static let instance: CPLogging = CPLogging()
    
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
    
    public func debugInfo(_ string: String) {
        log(message: string, type: .info)
    }
    
    public func debugVerbose(_ string: String) {
        log(message: string, type: .verbose)
    }
    
    public func debugWarning(_ string: String) {
        log(message: string, type: .warning)
    }
    
    public func debugError(_ string: String) {
        log(message: string, type: .error)
    }
    
    public func debugSuccess(_ string: String) {
        log(message: string, type: .successs)
    }
    
    //MARK: Helper Method
    fileprivate func log(message: String, type: LogType) {
        if isLogEnabled {
            var log = ""
            switch type {
                case .info:
                    log = "😊"
                case .verbose:
                    log = "🙆‍♂️"
                case .error:
                    log = "😡"
                case .warning:
                    log = "😛"
                case .successs:
                    log = "😂"
            }
            log = "\(log): \(message)"
            
            if isTimestampShown {
                NSLog("CPLogging: %@", log)
            }
            else {
                print("CPLogging: \(log)")
            }
        }
        else {
            NSLog("No Logs Enabled")
        }
    }
}
