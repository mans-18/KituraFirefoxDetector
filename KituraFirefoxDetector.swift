import Kitura
import Foundation

public class FirefoxDetector: RouterMiddleware {
    public func handle(request: RouterRequest, response: RouterResponse, next: @escaping() -> Void) throws {
        if let ua = request.headers["User-Agent"], ua.contains("Firefox") {
            request.userInfo["usingFirefox"] = true
        }
        else {
            request.userInfo["usingFirefox"] = false
        }
        next()
    }
    public init() {
        
    }
}
