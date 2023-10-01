import Foundation

/// Primary API service objeto to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback wit data or error
    public func execute(_ request: RMRequest, completion: @escaping ()-> Void) {
        
    }
}
