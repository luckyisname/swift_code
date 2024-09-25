import XCTest

enum JSONFileName: String {
    case exampleFile
}

class MockFileManager {

    static func loadMockResponse(fileName: JSONFileName) -> Data? {
        if let path = Bundle.main.path(forResource: fileName.rawValue, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                return data
            } catch {
                XCTFail("Error loading mock response: \(error.localizedDescription)")
                return nil
            }
        } else {
            XCTFail("Mock file not found")
            return nil
        }
    }
}
