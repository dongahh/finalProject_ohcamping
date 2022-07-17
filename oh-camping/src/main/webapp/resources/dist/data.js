

var device_width = window.innerWidth;


$(document).ready(function(){


/* ============

::::::::::::: 야놀자 세팅 ::::::::::::

============ */


    setTimeout(function(){
        $('.yapen-sec-title').eq(0).html('<h1 class="map_tit txt_center">Season</h1><h3 class="map_stit txt_center">성수기</h3>');
        $('.yapen-sec-title').eq(1).html('<h1 class="map_tit txt_center">Introduction</h1><h3 class="map_stit txt_center">이용안내</h3>');
        // $('.yapen-intro-content p').eq(10).before("<p>&nbsp;</p>");
        // $('.yapen-intro-content p').eq(11).before("<p>입실 15:00 / 퇴실 11:00 </p>");
    },500);

    /* 예약 모듈 가격 표 */

    var priceLayer = $('#priceLayer');
    if(priceLayer.length >= 1){
    callYapenPriceTable('priceLayer','51741','yapen','/reser/reservation.php','self','Y','R');
    }


        
/* ============

::::::::::::: 링크 세팅 ::::::::::::

============ */


/* 실시간 예약 */

    var reservation = "/reser/reservation.php";
    $('.link_reser').attr('href',reservation);



/* ============

::::::::::::: 펜션 정보 세팅 ::::::::::::

============ */


$('.pen_name_tit').html('Finland Camping');


        
var new_info = new Pension_Info(
    '핀란드 캠핑성', // 상호명
    '최혁', // 대표자
    '경기 가평군 상면 물골길 102', // 주소
    '620-86-01791', // 사업자번호
    '농협 351-1089-4614-03 최혁', // 계좌번호
    '010-9639-7621',// 전화
    'bikee7777@naver.com', // 이메일
    '15:00', // 입실
    '11:00' //퇴실
);


$('.sh_season').html('준성수기 : 07월 01일 ~ 08월 31일');
$('.high_season').html('성수기 : 07월 25일 ~ 08월 05일');


/* ============

::::::::::::: 방 정보 세팅 ::::::::::::

============ */


$('.room_intro_tit').html('아름다운 경치, 깨끗한 자연, 상쾌한 피톤치드와 함께 힐링해보세요');


var room_1 = new Room_Info(
    'set_room_1', // 방 파일 명
    '<span class="font_noto">계곡 1 ~ 11</span>', // 방 이름
    '평수 : 약42m<sup>2</sup> (13평)', // 평수
    '객실형태 : 침대1, 소파, 화장실, 싱크대, 계곡 뷰', // 객실형태
    '정리정돈& 설겆이 및 쓰레기분리 수거 후 체크아웃 해주세요', // 입/퇴실 시간
    '이용인원 : 기준 2명 / 최대 4명', // 이용인원
    '기준인원 초과시 15,000원 추가요금이 있습니다. <br> 만 6세미만은 무료이지만 인원수에 포함.',// 주의사항 1
    '퀸침대 1개, 호텔식 침구, 변형 침대매트리스 2개 , 냉난방기, 선풍기, TV, 와이파이, 드라이기, 전기장판 2개, 전자렌지, 전기밥솥, 커피포트, 건조대, 2구버너, 220리터 대형온수기, 개별화장실(샴푸, 린스, 바디워시), 개별싱크대(대형냄비, 소형냄비, 후라이팬, 칼, 도마, 집게 등 기본식기세트), 전용화로대, 숯 웨버그릴, 실내외 테이블 2세트(4인기준), 개별파라솔' // 구비시설

);


//var room_2 = new Room_Info(
//    'set_room_2', // 방 파일 명
//    '<span class="font_noto">대형 1</span>', // 방 이름
//    '평수 : 약52m<sup>2</sup> (16평)', // 평수
//    '객실형태 : 침대1, 소파, 화장실, 싱크대, 수영장 뷰', // 객실형태
//    '정리정돈& 설겆이 및 쓰레기분리 수거 후 체크아웃 해주세요', // 입/퇴실 시간
//    '이용인원 : 기준 2명 / 최대 4명', // 이용인원
//    '기준인원 초과시 15,000원 추가요금이 있습니다. <br> 만 6세미만은 무료이지만 인원수에 포함.',// 주의사항 1
//    '퀸침대 2개, 추가매트리스, 호텔식 침구, 변형 침대매트리스 2개 , 냉난방기, 선풍기, TV, 와이파이, 드라이기, 전기장판 2개, 전자렌지, 전기밥솥, 커피포트, 건조대, 2구버너, 220리터 대형온수기, 개별화장실(샴푸, 린스, 바디워시), 개별싱크대(대형냄비, 소형냄비, 후라이팬, 칼, 도마, 집게 등 기본식기세트), 전용화로대, 숯 웨버그릴, 실내외 테이블 2세트(4인기준), 개별파라솔' // 구비시설
//
//);


var room_3 = new Room_Info(
    'set_room_3', // 방 파일 명
    '<span class="font_noto">대형 1, 2, 3, 4</span>', // 방 이름
    '평수 : 약52m<sup>2</sup> (16평)', // 평수
    '객실형태 : 침대2, 화장실, 싱크대, 수영장 뷰', // 객실형태
    '정리정돈& 설겆이 및 쓰레기분리 수거 후 체크아웃 해주세요', // 입/퇴실 시간
    '이용인원 : 기준 2명 / 최대 6명', // 이용인원
    '기준인원 초과시 15,000원 추가요금이 있습니다. <br> 만 6세미만은 무료이지만 인원수에 포함.',// 주의사항 1
    '퀸침대 2개, 추가매트리스, 호텔식 침구, 변형 침대매트리스 2개 , 냉난방기, 선풍기, TV, 와이파이, 드라이기, 전기장판 2개, 전자렌지, 전기밥솥, 커피포트, 건조대, 2구버너, 220리터 대형온수기, 개별화장실(샴푸, 린스, 바디워시), 개별싱크대(대형냄비, 소형냄비, 후라이팬, 칼, 도마, 집게 등 기본식기세트), 전용화로대, 숯 웨버그릴, 실내외 테이블 2세트(4인기준), 개별파라솔' // 구비시설

);
        

var room_4 = new Room_Info(
    'set_room_4', // 방 파일 명
    '<span class="font_noto">텐트</span>', // 방 이름
    '크기 : 3x4m / 4x5m' // 평수
);
     





/* ============

::::::::::::: 예약 안내 상세사항 및 가격 세팅 ::::::::::::

============ */


        var room_1 = new Room_price(
            'room_1', // 방 이름
            '계곡1 ~ 계곡11', // 객실명
            '거실 + 침대1, 소파1, 화장실1, 싱크대', // 형태
            '약42m<sup>2</sup> (13평)', // 평수
            '2명/4명', // 기준/최대
            '120,000', // 비수기 Price 주중
            '140,000', // 비수기 Price 금요일
            '170,000', // 비수기 Price 주말

            '140,000', // 준성수기 Price 주중
            '160,000', // 준성수기 Price 금요일
            '200,000', // 준성수기 Price 주말

            '200,000', // 성수기 Price 주중
            '220,000', // 성수기 Price 금요일
            '250,000' // 성수기 Price 주말

        );


        var room_2 = new Room_price(
            'room_2', // 방 이름
            '', // 객실명
            '침대1, 소파1, 화장실1, 싱크대, 수영장 뷰', // 형태
            '약52m<sup>2</sup> (16평)', // 평수
            '2명/4명', // 기준/최대
            '140,000', // 비수기 Price 주중
            '160,000', // 비수기 Price 금요일
            '190,000', // 비수기 Price 주말

            '160,000', // 준성수기 Price 주중
            '180,000', // 준성수기 Price 금요일
            '220,000', // 준성수기 Price 주말

            '220,000', // 성수기 Price 주중
            '250,000', // 성수기 Price 금요일
            '280,000' // 성수기 Price 주말

        );

        var room_3 = new Room_price(
            'room_3', // 방 이름
            '대형 2, 3, 4', // 객실명
            '침대2, 화장실1, 싱크대, 수영장 뷰', // 형태
            '약52m<sup>2</sup> (16평)', // 평수
            '2명/6명', // 기준/최대
            '150,000', // 비수기 Price 주중
            '170,000', // 비수기 Price 금요일
            '200,000', // 비수기 Price 주말

            '170,000', // 준성수기 Price 주중
            '190,000', // 준성수기 Price 금요일
            '230,000', // 준성수기 Price 주말

            '230,000', // 성수기 Price 주중
            '260,000', // 성수기 Price 금요일
            '290,000' // 성수기 Price 주말

        );


        var room_4 = new Room_price(
            'room_4', // 방 이름
            '대형계곡', // 객실명
            '침대2, 화장실1, 싱크대, 계곡 뷰', // 형태
            '약52m<sup>2</sup> (16평)', // 평수
            '2명/6명', // 기준/최대
            '150,000', // 비수기 Price 주중
            '170,000', // 비수기 Price 금요일
            '200,000', // 비수기 Price 주말

            '170,000', // 준성수기 Price 주중
            '190,000', // 준성수기 Price 금요일
            '230,000', // 준성수기 Price 주말

            '230,000', // 성수기 Price 주중
            '260,000', // 성수기 Price 금요일
            '290,000' // 성수기 Price 주말

        );




/* ========== Slide Txt ========= */

        var wrap_pre_txt_leng = $('.wrap_pre_txt').length;

        for(var i = 0; i<wrap_pre_txt_leng; i++){
            var slide_room_name = $('.wrap_pre_txt').eq(i).children('.pre_txt').children('h2').text();
            $('.slick-dots li').eq(i).html('<span>'+slide_room_name+'</span>');
        }
        //   $('.slick-dots li').eq(0).html('<span>Sweet A101</span>');


/* =========== Bg Setting =========== */


        if( $('#room_img_setting').length > 0){

            var room_id = $('.wrap_bg_slide').attr('id');
            if(room_id.length > 9 ){
                var room_id_set = room_id.substring(room_id.length -2);
            }else{
                var room_id_set = room_id.substring(room_id.length -1);;
            }
            var sli_main_len = $('.sli_main').length; 
            var room_lmg_num = $('.room_img_list').length;
    
            console.log(room_lmg_num);
    
            if(device_width > 600){
                for(var i = 0; i < sli_main_len; i++){
                    $('#img_room'+room_id_set+' .sli_main:eq('+i+')').css('background-image','url(/img/room/room'+room_id_set+'/'+i+'.jpg)');
                }
    
                for(var j = 0; j < room_lmg_num; j++){
                    $('.room_img_list:eq('+j+')').css('background-image','url(/img/room/room'+room_id_set+'/list/'+j+'.jpg)');
                }
    
                $('.wrap_img').css('background-image','url(/img/room/room'+room_id_set+'/2.jpg)');
    
            }
    
            if(device_width < 600){
                for(var i = 0; i < sli_main_len; i++){
                    $('#img_room'+room_id_set+' .sli_main:eq('+i+')').css('background-image','url(/img/room/room'+room_id_set+'/mb/'+i+'.jpg)');
                }
    
                for(var j = 0; j < room_lmg_num; j++){
                    $('.room_img_list:eq('+j+')').css('background-image','url(/img/room/room'+room_id_set+'/list/mb/'+j+'.jpg)');
                }
   
            }

        }


        if(device_width < 800){

            if( $('#pre_room_mb').length > 0){
                var wrap_pre_mb_len = $('.wrap_pre_mb').length;
                var pre_room_id = $('.wrap_pre_mb').attr('id');
                
                if(pre_room_id.length > 10 ){
                    var pre_room_id_set = pre_room_id.substring(pre_room_id.length -2);
                }else{
                    var pre_room_id_set = pre_room_id.substring(pre_room_id.length -1);;
                }
                console.log(pre_room_id_set);

                for(var i = 1; i < wrap_pre_mb_len+1; i++){

                    for(var j = 0; j < 3; j++){
                        $('#pre_room_'+i+' .pre_img_set:eq('+j+')').css('background-image','url(/img/room/room'+i+'/mb/'+j+'.jpg)');
                    }
                    
                }

            }

        }
       
       
      


    });



