//
//  ming_ling_watch_os_Watch_AppUITestsLaunchTests.swift
//  ming-ling-watch-os Watch AppUITests
//
//  Created by CreepOnSky on 2025/7/24.
//

import XCTest

final class ming_ling_watch_os_Watch_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
