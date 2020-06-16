// $(function(){
//   $(".mypage_side_box").on("click",function(e){
//     e.preventDefault();
//     console.log("hello world");
//   })
// });
window.onpageshow = function(event) {
  if (event.persisted) {
    window.location.reload();
  }
};
$(function() {
  let tabs = $(".mypage_side_box");
  $(document).on("click",".mypage_side_box", function() {
    $(".active").removeClass("active"); 
    $(this).addClass("active");
    var index = tabs.index(this);
    $(".main_display_mypage_box").removeClass("show").eq(index).addClass("show");
  });
});