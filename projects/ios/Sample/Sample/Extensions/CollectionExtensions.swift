import Foundation

extension Collection {
    subscript(optional i: Index) -> Iterator.Element? {
        return indices.contains(i) ? self[i] : nil
    }
}
