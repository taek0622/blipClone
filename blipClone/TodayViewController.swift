//
//  TodayViewController.swift
//  blipClone
//
//  Created by 김민택 on 12/21/23.
//

import UIKit

class TodayViewController: UIViewController {

    // MARK: - View

    private let todayScheduleTitle: UILabel = {
        $0.text = "오늘의 스케줄을\n놓치지 마세요 ⏰"
        $0.textAlignment = .left
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }

    // MARK: - Method

    private func layout() {
        
    }
}
