<div class="slideshow">
  <ul>
      <li><img src="asset/images/lol_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/hearthstone_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/ow_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cs_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cod_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/fifa_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/ow_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cod_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/hearthstone_acceuil.png" alt="" width="230" height="700" /></li>
  </ul>
</div>
 
<script type="text/javascript">
var timerId = 0;
var carrousel = 0;

  $(".slideshow").mouseover(function(){

    if (carrousel == 0)
    {
      console.log("enter");
      carrousel = 1;
      clearInterval(timerId);
      timerId = 0;
    }
  });

  $(".slideshow").mouseout(function(){

    if (carrousel == 1 && timerId == 0)
    {
      console.log("out");
      carrousel = 0;
      
      timerId = setInterval(function(){
       $(".slideshow ul").animate({marginLeft:-240},800,function(){
           $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first"));
       })
    }, 3500);

    }
  });
</script>