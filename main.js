$(document).ready(function(){

  $('#navigation').onePageNav({
    currentClass: 'current',
    changeHash: false,
	  scrollOffset: 0,
  });



$('#button').click(toggleMyNav);

$('.GalButShow').click(toggleGal);
$('.GalButCLOSE').click(closeGallery);

});

function closeGallery(){
  $('#myContainer').css('opacity',0);

  $('.GalButCLOSE').hide();

  navOpen();

    $('.GalButShow').show();
}


function toggleGal() {

  $('#myContainer').css('opacity',1);

  $('.GalButShow').hide();

  navShrink();

  $('.GalButCLOSE').show();

}


function toggleMyNav() {
let navSize = $('#navigation').css('width',);
    if (navSize == '280px')
        navShrink();

    else if (navSize == '141px')
        navOpen();

    else
        navOpen();
};


function navShrink() {
$('#navigation').css('width', 140);

$('#topnav').css({'z-index':'-4','opacity':'0','width':'20px', 'height':'20px','margin-left':'-2px','padding-left':'-2px'});

$('.anchor').css({'z-index':'-4','opacity':'0','width':'20px', 'height':'20px','margin-left':'-2px','padding-left':'-2px'});

$('#button').css({'margin-top':'305px','margin-bottom':'200px'});

$('#logo').css({'width':'140px','height':'100px','font-size':'40px','padding':'30px 20px 30px 5px'});
};

// had to re-write css for open here onclick overides original css need to debug

function navOpen(){
$('#navigation').css('width', 280);

$('#topnav').css({'z-index':'-2','opacity':'1','width':'200px', 'height':'200px','margin-top':'210px','margin-right':'-2px','marging-bottom':'250px','margin-left':'2px','padding-right':'-2px','padding-left':'5px'});

$('.anchor').css({'z-index':'1','opacity':'1','width':'200px', 'height':'40px','margin-left':'2px','padding-top':'8px', 'padding-right':'1px', 'padding-bottom':'8px', 'padding-left':'10px'});

$('#button').css({'margin-top':'305px','margin-bottom':'200px'});

$('#logo').css({'width':'280px','height':'120px','font-size':'65px','padding-top':'35px','padding-right':'25px','padding-bottom':'35px','padding-left':'25px'
});

};

// function  closeNav(){
//   $('#navigation').css({'width':'0', 'opacity':'0', 'z-index':'0'});
//   $('#topnav').css({'width':'0', 'opacity':'0', 'z-index':'0'});
//   $('.anchor').css({'width':'0', 'opacity':'0', 'z-index':'0'});
//   $('#button').css({'width':'0', 'opacity':'0', 'z-index':'0'});
//   $('#logo').css({'width':'0', 'opacity':'0', 'z-index':'0'});
// };
