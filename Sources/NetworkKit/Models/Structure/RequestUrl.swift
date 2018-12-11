import Foundation

public enum RequestUrl: Equatable, Hashable {
    case endpoint(String)
    case full(URL)
}
