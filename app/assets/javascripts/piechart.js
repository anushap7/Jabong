$(function () {
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'User Visited in different Browser, 2014'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'User Visited ',
            data: [
                ['Firefox',   45.0],
                ['IE',       26.8],
                [ 'Chrome', 12.8]
                ['Safari',    8.5],
                ['Opera',     6.2],
                
            ]
        }]
    });
});
    
$(function () {
        $('#contain').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'User Visited in different Browser, 2014'
            },
            
            xAxis: {
                categories: ['Firefox', 'IE', 'Chrome', 'Safari','opera'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'user visited',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                name: 'Year 2014',
                data: [107, 31, 635, 203, 2]
             
                
                
             
                
            }]
        });
    });
    