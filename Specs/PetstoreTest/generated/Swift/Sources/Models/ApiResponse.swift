//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ApiResponse: Codable, Equatable {

    public var code: Int?

    public var message: String?

    public var type: String?

    public init(code: Int? = nil, message: String? = nil, type: String? = nil) {
        self.code = code
        self.message = message
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case code
        case message
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        code = try container.decodeIfPresent(.code)
        message = try container.decodeIfPresent(.message)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(code, forKey: .code)
        try container.encode(message, forKey: .message)
        try container.encode(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ApiResponse else { return false }
      guard self.code == object.code else { return false }
      guard self.message == object.message else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: ApiResponse, rhs: ApiResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}