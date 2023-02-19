import Foundation

public extension Response {
	func getServerResult() -> Result<T, ServerError> {
		if success {
			return .success(body)
		}

		return .failure(.serverError(message: message ?? "", data: body))
	}
}
