$(document).ready(function(){


  if ($('li.cust').length > 4) {
      $('li.cust:gt(4)').hide("slow");
      $('button.showhide').show("slow");
  }

      $('button.showhide').on('click', function(e){
        e.preventDefault();
        $('li.cust:gt(4)').toggle("slow"
        );
        var text = $(this).text();
        $(this)
        .text(text ==  "Hide" ? "Show More" : "Hide");
      });




});
