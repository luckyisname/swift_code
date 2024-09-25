public let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")

var appIconId: XCUIElement {
    springboard.otherElements.icons["appName"].firstMatch
}

func checkBadgeCountOnAppIcon() {
        XCUIDevice.shared.press(XCUIDevice.Button.home)
        springboard.openApp()
        XCUIDevice.shared.press(XCUIDevice.Button.home)
        let badgeCount = appIconId.value as? String
        XCTAssertEqual(badgeCount, "n")
}
