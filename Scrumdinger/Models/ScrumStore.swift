import SwiftUI

// ObservableObject makes sure that all objects subscribed to the current object will update UI when @Published variables change
// @MainActor ensures that loading data with ScrumStore happens on the main thread to ensure informing all observers
@MainActor
class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        // access default document directory
        try FileManager.default.url(for: .documentDirectory,
                                            in: .userDomainMask,
                                            appropriateFor: nil,
                                            create: false)
        // add scrums.data to document path
        .appendingPathComponent("scrums.data")
    }
    
    func load() async throws {
        // important: use constant to use return values of async function later on
        let task = Task<[DailyScrum], Error> {
            
            // obtain path
            let fileURL = try Self.fileURL()
            
            // if there is no data to be obtained, return an empty list
            guard let data = try? Data(contentsOf: fileURL) else {
                            return []
            }
            
            // if there is data, decode it from .json to a constant
            let dailyScrums = try JSONDecoder().decode([DailyScrum].self, from: data)
            
            // return the loaded data
            return dailyScrums
        }
        
        // execute data loading and save results
        let scrums = try await task.value
        
        // make loaded data a class attribute
        self.scrums = scrums
    }
    
    func save(scrums: [DailyScrum]) async throws {
        // this time we don't return anything, thus we don't specify generics
        let task = Task {
            let data = try JSONEncoder().encode(scrums)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        
        _ = try await task.value
    }
}
