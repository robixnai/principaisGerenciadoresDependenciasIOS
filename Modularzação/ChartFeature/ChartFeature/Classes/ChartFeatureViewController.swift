//
//  ChartFeatureViewController.swift
//  GerenciadorDependencias
//
//  Created by Robson Moreira on 16/11/22.
//

import UIKit
import Charts
import TinyConstraints

public class ChartFeatureViewController: UIViewController {
    
    private lazy var chartView: LineChartView = {
        let lineChartView = LineChartView()
        lineChartView.backgroundColor = .systemBlue
        lineChartView.rightAxis.enabled = false
        lineChartView.leftAxis.labelPosition = .outsideChart
        lineChartView.xAxis.labelPosition = .bottom
        lineChartView.animate(xAxisDuration: 2.5)
        return lineChartView
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(chartView)
        
        print("viewDidLoad")
        
        addConstraints()
        
        createChart()
    }

    private func addConstraints() {
        chartView.centerInSuperview()
        chartView.width(to: view)
        chartView.heightToWidth(of: view)
    }
    
    private func createChart() {
        let yValues = [
            ChartDataEntry(x: 0.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 1.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 2.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 3.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 4.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 5.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 6.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 7.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 8.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 9.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 10.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 11.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 12.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 13.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 14.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 15.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 16.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 17.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 18.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 19.0, y: Double.random(in: 1...10)),
            ChartDataEntry(x: 20.0, y: Double.random(in: 1...10))
        ]
        
        let set1 = LineChartDataSet(entries: yValues, label: "")
        set1.mode = .cubicBezier
        set1.drawCirclesEnabled = false
        
        let data = LineChartData(dataSet: set1)
        data.setDrawValues(false )
        self.chartView.data = data
    }

}

