

var device_width = window.innerWidth;

if( $('.iframe_pc').length > 0 ){
  var iframe_id = document.querySelector('.iframe_pc').getAttribute('data-iframe'); ; 
}

/* CF9so5YnprI   348746034 */

if(device_width < 600){

    var wrap_player = $('.wrap_mb_iframe');
    var video_id = $('.wrap_mb_iframe').attr('id');

    if($('.iframe_youtube').length > 0 ){

        var main_iframe = '<iframe width="100%" height="100%" title="main video" src="https://www.youtube.com/embed/'+iframe_id+'?amp;autoplay=1&amp;loop=1&amp;vq=hd720&amp;controls=0&amp;showinfo=0&amp;autohide=1&amp;disablekb=1&amp;showinfo=0&amp;disablekb=1&amp;modestbranding=1&amp;playlist='+iframe_id+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen data-autoplay></iframe>';

    }
    
    if($('.iframe_vimeo').length > 0 ){
      
      var main_iframe = '<iframe src="https://player.vimeo.com/video/'+iframe_id+'?title=0&byline=0" width="100%" height="100%" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

    }
  
    wrap_player.html(main_iframe);
}


if(device_width > 600){

  if($('.iframe_youtube').length > 0 ){

    /* Youtube API */
        var tag = document.createElement('script');
        tag.src = "https://www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        var player;
        function onYouTubeIframeAPIReady() {
            player = new YT.Player('iframe_pc', {
            autoplay: 1,
            mute:1,
            videoId: iframe_id,
            playerVars: {
                'autoplay': 1,
                'controls': 0,
                'rel' : 0,
                'fs' : 0,
                'showinfo':0,
            },
            events: {
                'onReady': onPlayerReady,
                'onStateChange': onPlayerStateChange
            }
            });
        }


        var player = document.querySelector('#ifram_pc');

        function onPlayerReady(event) {
            event.target.playVideo();
            // event.target.mute();
        }

        var done = false;
        function onPlayerStateChange(e) {
            if (e.data === YT.PlayerState.ENDED) {
                player.playVideo();
            }
        }
        function pauseVideo() {
            // player.pauseVideo();
            player.mute();
        }

        function replayVideo() {
            // player.playVideo();
            player.unMute();
        }

        function muteVideo() {
          player.mute();
        }

        function unmuteVideo() {
          player.unMute();
        }


        $('#quality').on('change', function () {
            player.setPlaybackQuality('hd1080');
        });

        var video = document.querySelector('.wrap_menu');

    }

    if($('.iframe_vimeo').length > 0 ){
      var vimeo_CDN = document.createElement('script');  
        vimeo_CDN.setAttribute('src','https://player.vimeo.com/api/player.js');
        document.head.appendChild(vimeo_CDN);

        var wrap_player2 = $('.iframe_pc');
        var vimeo_id = $('.iframe_pc').attr('id');

        var main_iframe2 = '<iframe src="https://player.vimeo.com/video/'+iframe_id+'?title=0&byline=0&loop=1&quality=2k" width="100%" height="100%" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

        wrap_player2.html(main_iframe2);

        var vimeo_iframe = document.querySelector('.iframe_pc iframe');
        var vimeo_player = new Vimeo.Player(vimeo_iframe);

        vimeo_player.ready().then(function(){
          console.log('ready');
          vimeo_player.play();
          //  play_initial();
        })

        function replayVideo(){
          vimeo_player.play();
        }
      
        function pauseVideo(){
          vimeo_player.getPaused().then(function(paused){
            if(paused == false){
              vimeo_player.pause();
            }
          });
          
        }
    }

  }



  if(device_width > 600){

      window.onscroll = function(){

        if(window.scrollY <= 0){
          $('.wrap_menu').removeClass('fixed');
        }else{
          $('.wrap_menu').addClass('fixed');
        }


        var video_viewport = document.querySelector('.box_arrow_main.right');

        var bounding = video_viewport.getBoundingClientRect();

        if (
          bounding.top >= 0 &&
          bounding.left >= 0 &&
          bounding.right <= (window.innerWidth || document.documentElement.clientWidth) &&
          bounding.bottom <= (window.innerHeight || document.documentElement.clientHeight)
        ) 
        {
          replayVideo();
        } else {
          pauseVideo();

        }
      }
  }


    /* :::::::::::::: Slide Setting :::::::::::::: */

      if($('.wrap_main_slide').length > 0 ) {
          $('.wrap_main_slide').slick({
            fade:true,
            prevArrow: $('.box_arrow_main.left.main'),
            nextArrow: $('.box_arrow_main.right.main')
          }  
        );
      }

      if($('.wrap_bg_slide').length > 0 ) {
        $('.wrap_bg_slide').slick({
            fade:true,
            prevArrow: $('.box_arrow_bg.left.main'),
            nextArrow: $('.box_arrow_bg.right.main')
          }  
        );  
      }

      if($('.preview_slide').length > 0 ) {
          $('.preview_slide').slick({
            fade:true,
            dots: true,
            prevArrow: $('.box_arrow_main.left.preview'),
            nextArrow: $('.box_arrow_main.right.preview')
          }  
        );
      }

      if($('.wrap_main_travel').length > 0 ) {
        $('.wrap_main_travel').slick({
            fade:true,
            prevArrow: $('.box_arrow_main.left.main_tour'),
            nextArrow: $('.box_arrow_main.right.main_tour')
          }  
        );
      }

      var wrap_pre_txt_leng = $('.wrap_pre_txt').length;

      for(var i = 0; i<wrap_pre_txt_leng; i++){
        var slide_room_name = $('.wrap_pre_txt').eq(i).children('.pre_txt').children('h2').text();
        $('.slick-dots li').eq(i).html('<span>'+slide_room_name+'</span>');
      }
      //   $('.slick-dots li').eq(0).html('<span>Sweet A101</span>');




  /* ========== MB Btn ========== */

      $('.mb_btn').on('click',function(){
        $(this).toggleClass('on');
        $('.menu_mb').toggleClass('on');
      })


  /* ========== AOS Initialize ========== */

    setTimeout(function(){
        AOS.init({
            duration: 700,
            // disable: 'mobile',
            // useClassNames: true,
            // // initClassName: false,
            // animatedClassName: 'animated',
          });
    },2000)
  


 
   
