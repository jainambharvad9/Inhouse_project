// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var Apartment = document.getElementById("Apartment").value;
var Villa = document.getElementById("Villa").value;
var Home = document.getElementById("Home").value;
var Townhouse = document.getElementById("Townhouse").value;


var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
      labels: ["Apartment", "Villa", "Home","Townhouse"],
    datasets: [{
      data: [Apartment, Villa, Home,Townhouse],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#e74a3b'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#e74a3b'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
