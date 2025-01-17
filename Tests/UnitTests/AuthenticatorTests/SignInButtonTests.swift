import XCTest
@testable import BeyondIdentityAuthenticator
@testable import SharedDesign

class SignInButtonTests: XCTestCase {
    private var button: PrimaryButton!

    override func setUp() {
        super.setUp()
        button = SignInButton(title: "Sign In")
    }

    override func tearDown() {
        button = nil
        super.tearDown()
    }

    func test_signInButton_isAccessible() {
        XCTAssertTrue(button.isAccessibilityElement)
    }

    func test_signInButton_accessibilityTraits() {
        XCTAssertEqual(button.accessibilityTraits, .button)
    }

    func test_signInButton_accessibilityLabel_isButtonTitle() {
        XCTAssertEqual(button.accessibilityLabel, "Sign In ")
    }

    func test_signInButton_color_isPrimaryButtonColor() {
        XCTAssertEqual(button.layer.backgroundColor, UIColor.primaryButtonColor.cgColor)
    }

    func test_signInButton_borderColor_isPrimaryButtonColor() {
        XCTAssertEqual(button.layer.borderColor, UIColor.primaryButtonColor.cgColor)
    }

    func test_signInButton_textColor_isPrimaryButtonText() {
        XCTAssertEqual(button.titleLabel.textColor, .primaryButtonText)
    }

    func test_signInButton_fontTextStyle_isBody() {
        XCTAssertEqual(button.titleLabel.font, Fonts.body)
    }
}
