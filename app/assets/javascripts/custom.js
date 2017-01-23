$(document).ready(function(){

  if ($('li.cust').length <= 0){
      $('ul.custo').hide();
  } else {
      $('ul.custo').show("slow");
        $('ul.custo').css({"border-bottom-left-radius": "8px", "border-bottom-right-radius": "8px"})
  }

  if ($('li.cust').length > 5) {
      $('li.cust:gt(4)').hide();
      $('button.showhide').show("slow");
      $('ul.custo').css({"border-bottom-left-radius": "0px", "border-bottom-right-radius": "0px"})
  } else {
    $('button.showhide').hide();
  }

    $('.rightbox .del').hide();
  $('.rightbox').on('click', function(e){
    e.preventDefault();
    $('.del', this).toggle();
  });

      $('button.showhide').on('click', function(e){
        e.preventDefault();
        $('li.cust:gt(4)').toggle("slow"
        );
        var text = $(this).text();
        $(this)
        .text(text ==  "Hide" ? "Show More" : "Hide");
      });




});
