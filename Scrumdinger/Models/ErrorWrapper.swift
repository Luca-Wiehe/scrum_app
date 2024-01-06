import Foundation

struct ErrorWrapper: Identifiable {
    /*
     Wrapper class that saves error details in case of an error
     */
    
    // Identifiable requires id attribute
    let id: UUID
    let error: Error
    let guidance: String
    
    // use constructor to set required attributes
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
