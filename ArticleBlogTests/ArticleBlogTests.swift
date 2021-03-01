//
//  ArticleBlogTests.swift
//  ArticleBlogTests
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import XCTest
@testable import ArticleBlog

class ArticleBlogTests: XCTestCase {
    
    var viewControllerUnderTest: ArticlesViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewControllerUnderTest = storyboard.instantiateViewController(withIdentifier: "ArticleVC") as? ArticlesViewController
        self.viewControllerUnderTest.loadView()
        self.viewControllerUnderTest.viewDidLoad()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHasATableView() {
         XCTAssertNotNil(viewControllerUnderTest.tableView)
     }
     func testTableViewHasDelegate() {
         XCTAssertNotNil(viewControllerUnderTest.tableView.delegate)
     }
     func testTableViewConfromsToTableViewDelegateProtocol() {
         XCTAssertTrue(viewControllerUnderTest.conforms(to: UITableViewDelegate.self))
         XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.tableView(_:didSelectRowAt:))))
     }
     func testTableViewHasDataSource() {
         XCTAssertNotNil(viewControllerUnderTest.tableView.dataSource)
     }
     func testTableViewConformsToTableViewDataSourceProtocol() {
         XCTAssertTrue(viewControllerUnderTest.conforms(to: UITableViewDataSource.self))
         XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.tableView(_:numberOfRowsInSection:))))
         XCTAssertTrue(viewControllerUnderTest.responds(to: #selector(viewControllerUnderTest.tableView(_:cellForRowAt:))))
     }
     func testTableViewCellHasReuseIdentifier() {
         let cell = viewControllerUnderTest.tableView(viewControllerUnderTest.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? ArticleTableViewCell
         let actualReuseIdentifer = cell?.reuseIdentifier
         let expectedReuseIdentifier = "ArticleTableViewCell"
         XCTAssertEqual(actualReuseIdentifer, expectedReuseIdentifier)
     }

}
