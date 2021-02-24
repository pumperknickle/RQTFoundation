import Foundation

public protocol Prediction {
    var confidence: Float! { get }
    var timeOfPrediction: Date! { get }
}
