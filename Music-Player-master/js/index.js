// Open Side Nav
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  // document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
  $(".overlay").css({
    "display":"block",
    "position":"absolute",
    "width":"100vw",
    "height":"100vh",
    "z-index":"1",
    "background-color":"rgba(0,0,0,0.4)"
  });
  $("html").css("overflow","hidden");

  $('#mySidenav a').click(function(){
    $("html").css("overflow","auto");
  });
}
// Close Side Nav
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  // document.body.style.backgroundColor = "white";
  $(".overlay").css("display","none");
  $("html").css("overflow","auto");
}

// Adds Horizontal Scroll With Arrows
var set_scroll = function(id){
    
    var print = function(msg) {
      alert(msg);
    };

    var setInvisible = function(elem) {
      elem.css('visibility', 'hidden');
    };
    var setVisible = function(elem) {
      elem.css('visibility', 'visible');
    };

    var elem = $("#elem"+id);
    var items = elem.children();

    // Inserting Buttons
    elem.prepend('<div id="right-button'+id+'" style="visibility: hidden;"><img src="img/arrow-right.png" alt="#"></div>');
    elem.append('  <div id="left-button'+id+'"><img src="img/arrow-left.png" alt="#"></div>');

    // Inserting Inner
    items.wrapAll('<div id="inner'+id+'" />');

    // Inserting Outer
    elem.find('#inner'+id).wrap('<div id="outer'+id+'"/>');

    var outer = $('#outer'+id);

    var updateUI = function() {
      var maxWidth = outer.outerWidth(true);
      var actualWidth = 0;
      $.each($('#inner'+id+' >'), function(i, item) {
        actualWidth += $(item).outerWidth(true);
      });

      if (actualWidth <= maxWidth) {
        setVisible($('#left-button'+id));
      }
    };
    updateUI();

    $('#right-button'+id).click(function() {
      var leftPos = outer.scrollLeft();
      outer.animate({
        scrollLeft: leftPos - 500
      }, 200, function() {
        if ($('#outer'+id).scrollLeft() <= 0) {
          setInvisible($('#right-button'+id));
        }
      });
    });

    $('#left-button'+id).click(function() {
      setVisible($('#right-button'+id));
      var leftPos = outer.scrollLeft();
      outer.animate({
        scrollLeft: leftPos + 500
      }, 200);
    });

    $(window).resize(function() {
      updateUI();
    });
};

$(function(){
  set_scroll("0");
  set_scroll("1");
  set_scroll("2");
});
