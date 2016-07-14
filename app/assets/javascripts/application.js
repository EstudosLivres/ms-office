// Rails Frameworks
//=require jquery
//=require jquery.turbolinks
//=require jquery_ujs
//=require turbolinks
//=require bootstrap.min

// Theme (CreativeTim)
//= require creative-tim/paper_dashboard/bootstrap-checkbox-radio
//= require creative-tim/paper_dashboard/bootstrap-notify
//= require creative-tim/paper_dashboard/chartist.min
//= require creative-tim/paper_dashboard/demo
//= require creative-tim/paper_dashboard/paper-dashboard

// App Files
//= require_tree ./app

$(document).ready(startChart);
$(document).on('page:load', startChart);

function startChart() {
    var data = {
        series: [5, 3, 4]
    };

    var sum = function (a, b) {
        return a + b
    };

    new Chartist.Pie('#pie-chart', data, {
        labelInterpolationFnc: function (value) {
            return Math.round(value / data.series.reduce(sum) * 100) + '%';
        }
    });
}

//#E54B1D #F1AF2E #55A4BD