$(function(){
  setInterval(function() {
    var happiness = $('svg .labels:eq(3)').text();
    console.log(happiness);
    $.ajax({
      url: 'http://127.0.0.1:9000',
      type: 'GET',
      data: {
        happiness: '' + happiness
      }
    });
  }, 100);
});
