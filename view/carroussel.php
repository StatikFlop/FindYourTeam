<div class="slideshow">
  <ul>
    <div class="col-sm-2">
      <li><img src="asset/images/lol_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/hearthstone_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/ow_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cs_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cod_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/fifa_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/ow_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/cod_acceuil.png" alt="" width="230" height="700" /></li>
      <li><img src="asset/images/hearthstone_acceuil.png" alt="" width="230" height="700" /></li>
    </div>
  </ul>
</div>
 
<script type="text/javascript">
   $(function(){
      setInterval(function(){
         $(".slideshow ul").animate({marginLeft:-230},800,function(){
            $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first"));
         })
      }, 3500);
   });
</script>