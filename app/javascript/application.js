// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import Chartkick from "chartkick"
import Chart from "chart.js/auto"  // 修正箇所

// ChartkickにChart.jsを設定
Chartkick.use(Chart)