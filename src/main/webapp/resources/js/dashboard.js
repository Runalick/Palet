///* globals Chart:false, feather:false */
//import {Chart} from 'chart.js';
//import ChartDataLabels from 'chartjs-plugin-datalabels';
//
//Chart.register(ChartDataLabels);
//
//(() => {
//  'use strict'
//
//  feather.replace({ 'aria-hidden': 'true' })
//
//  // Graphs
//  const ctx = document.getElementById('myChart')
//  // eslint-disable-next-line no-unused-vars
//const myChart = new Chart(ctx, {
//    type: 'line',
//    data: {
//      labels: [
//        'Sun',
//        'Mon',
//        'Tue',
//        'Wed',
//        'Thu',
//        'Fri',
//        'Sat'
//      ],
//      datasets: [{
//        data: [
//          15,
//          21,
//          18,
//          24,
//          23,
//          24,
//          12
//        ],
//        lineTension: 0,
//        backgroundColor: 'transparent',
//        borderColor: '#007bff',
//        borderWidth: 4,
//        pointBackgroundColor: '#007bff'
//      }]
//    },
//    options: {
//	  plugins: {
//      // Change options for ALL labels of THIS CHART
//        datalabels: {
//          color: '#36A2EB'
//        }
//      },
//      scales: {
//        yAxes: [{
//          ticks: {
//            beginAtZero: false
//          }
//        }]
//      },
//      legend: {
//        display: false
//      }
//    }
//  })
//})()