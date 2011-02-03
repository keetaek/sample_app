$(document).ready(function(){
    var max_length = 140;
    whenkeydown(max_length)
});

whenkeydown = function(max_length)
{
  $("#micropost_content").unbind().keyup(function()
  {
    var text = $(this).val();
    var numofchars = text.length;
    if(numofchars <= max_length)
    {
      $("#counter").html("").html(text.length)
    } else {
      $(this).val(text.substring(0, max_length))
    }
  });

}
