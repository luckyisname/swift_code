    func checkBadgeCountOnAppIcon() {
        XCUIDevice.shared.press(XCUIDevice.Button.home)
        SpringboardScreen().openApp()
        XCUIDevice.shared.press(XCUIDevice.Button.home)
        let badgeCount = appIconId.value as? String
        XCTAssertEqual(badgeCount, "n")
    }
