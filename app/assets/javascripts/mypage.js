$(function() {
  let tabs = $(".mypage_side_box");

  $(document).on("click",".mypage_side_box", function() {
    $(".active").removeClass("active"); 
    $(this).addClass("active");
    const index = tabs.index(this);
    $(".main_display_mypage_box").removeClass("show").eq(index).addClass("show");
  });

  $(".go_to_mypage").on("click",function(){
    window.location.reload("/users/:id");
  });
  
});