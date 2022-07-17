
function Pension_Info(name,owner,address,pen_b_num,pen_bank,phone,email,entry,leave){
    this.name = name;
    this.owner = owner;
    this.address = address;
    this.pen_b_num = pen_b_num;
    this.pen_bank = pen_bank;
    this.pen_phone = phone;
    this.email = email;
    this.entry = entry;
    this.leave = leave;

    return this.insert();
}

    Pension_Info.prototype.insert = function(){
        $('.pen_name').text(this.name);
        $('.pen_owner').text(this.owner);
        $('.pen_address').text(this.address);
        $('.pen_b_num').text(this.pen_b_num);
        $('.pen_bank').text(this.pen_bank);
        $('.pen_phone').text(this.pen_phone);
        $('.pen_mail').text(this.email);
        $('.pen_entry').text(this.entry);
        $('.pen_leave').text(this.leave);
    }






    
        
function Room_Info(room_num, de_room_name, de_size, de_type,de_notice,de_peo,de_info1,de_facil){
    this.room_num = room_num;
    this.de_room_name = de_room_name;
    this.de_type = de_type;
    this.de_size = de_size;
    this.de_notice = de_notice;
    this.de_peo = de_peo;
    this.de_info1 = de_info1;
    this.facil = de_facil;
    Room_Info.numInstances = (Room_Info.numInstances || 0) + 1;


    return this.insert();

}

    Room_Info.prototype.insert = function(){
        $('.'+this.room_num+' .room_de_name').html(this.de_room_name);
        $('.'+this.room_num+' .room_de_type').html(this.de_type);
        $('.'+this.room_num+' .room_de_size').html(this.de_size);
        $('.'+this.room_num+' .room_de_notice').html(this.de_notice);
        $('.'+this.room_num+' .room_de_peo').html(this.de_peo);
        $('.'+this.room_num+' .room_de_info1').html(this.de_info1);
        $('.'+this.room_num+' .room_de_facil').html(this.facil);
    }





    
function Room_price(room_num, r_name,r_type,r_size,r_peo,
    price_weekday,price_friday,price_weekend,
    semi_weekday, semi_friday, semi_weekend,
    high_weekday, high_friday, high_weekend
    )
    {
    this.room_num = room_num;
    this.r_name = r_name;
    this.r_type = r_type;
    this.r_size = r_size;
    this.r_peo = r_peo;
    this.price_weekday = price_weekday;
    this.price_friday = price_friday;
    this.price_weekend = price_weekend;

    this.semi_weekday = semi_weekday;
    this.semi_friday = semi_friday;
    this.semi_weekend = semi_weekend;

    this.high_weekday = high_weekday;
    this.high_friday = high_friday;
    this.high_weekend = high_weekend;

    return this.insert();

    }


    Room_price.prototype.insert = function(room_num){

    if($('.set_js').length) {
    var mb_r_peo = this.r_peo.split('/');
    if(!this.r_size.substring(this.r_size.length - 4).indexOf('/') != -1) {
        var mb_size = this.r_size.substring(this.r_size.length -4);
    }else{
        var mb_size = this.r_size.substring(this.r_size.length -3);
    }
    var mb_peo = '기준'+mb_r_peo[0]+'/'+'최대'+mb_r_peo[1]+'('+mb_size;

    $('tr.'+this.room_num+' .info_r_name').html(this.r_name);
    $('tr.'+this.room_num+' .info_r_type').html(this.r_type);
    $('tr.'+this.room_num+' .info_r_size').html(this.r_size);
    $('tr.'+this.room_num+' .info_r_peo').html(this.r_peo);
    $('tr.'+this.room_num+' .info_r_peo_mb').html(mb_peo);


    var original_weekday = parseInt( this.price_weekday.split(',').join('') ) + 30000 ;
    original_weekday = original_weekday.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_fri = parseInt( this.price_friday.split(',').join('') ) + 30000 ;
    original_fri = original_fri.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_weekend = parseInt( this.price_weekend.split(',').join('') ) + 30000 ;
    original_weekend = original_weekend.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    /* 준성수기 */

    var original_weekday_semi = parseInt( this.semi_weekday.split(',').join('') ) + 30000 ;
    original_weekday_semi = original_weekday_semi.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_fri_semi = parseInt( this.semi_friday.split(',').join('') ) + 30000 ;
    original_fri_semi = original_fri_semi.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_weekend_semi = parseInt( this.semi_weekend.split(',').join('') ) + 30000 ;
    original_weekend_semi = original_weekend_semi.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    /* 성수기 */

    var original_weekday_high = parseInt( this.high_weekday.split(',').join('') ) + 30000 ;
    original_weekday_high = original_weekday_high.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_fri_high = parseInt( this.high_friday.split(',').join('') ) + 30000 ;
    original_fri_high = original_fri_high.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    var original_weekend_high = parseInt( this.high_weekend.split(',').join('') ) + 30000 ;
    original_weekend_high = original_weekend_high.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");


    $('tr.'+this.room_num+' .price_low.pri_weekday').html(this.price_weekday+'원');
    $('tr.'+this.room_num+' .price_low.pri_friday').html(this.price_friday+'원');
    $('tr.'+this.room_num+' .price_low.pri_weekend').html(this.price_weekend+'원');

    $('tr.'+this.room_num+' .price_semi_high.pri_weekday').html(this.semi_weekday+'원');
    $('tr.'+this.room_num+' .price_semi_high.pri_friday').html(this.semi_friday+'원');
    $('tr.'+this.room_num+' .price_semi_high.pri_weekend').html(this.semi_weekend+'원');

    $('tr.'+this.room_num+' .price_high.pri_weekday').html(this.high_weekday+'원');
    $('tr.'+this.room_num+' .price_high.pri_friday').html(this.high_friday+'원');
    $('tr.'+this.room_num+' .price_high.pri_weekend').html(this.high_weekend+'원');

    /* 원래 가격 */
    if($('.set_ori_price').length) {

        $('tr.'+this.room_num+' .rer_weekday .price_low.pri_original').html(original_weekday+'원');
        $('tr.'+this.room_num+' .rer_weekday .price_semi_high.pri_original').html(original_weekday_semi+'원');
        $('tr.'+this.room_num+' .rer_weekday .price_high.pri_original').html(original_weekday_high+'원');

        $('tr.'+this.room_num+' .rer_friday .price_low.pri_original').html(original_fri+'원');
        $('tr.'+this.room_num+' .rer_friday .price_semi_high.pri_original').html(original_fri_semi+'원');
        $('tr.'+this.room_num+' .rer_friday .price_high.pri_original').html(original_fri_high+'원');

        $('tr.'+this.room_num+' .rer_weekend .price_low.pri_original').html(original_weekend+'원');
        $('tr.'+this.room_num+' .rer_weekend .price_semi_high.pri_original').html(original_weekend_semi+'원');
        $('tr.'+this.room_num+' .rer_weekend .price_high.pri_original').html(original_weekend_high+'원');
        
        
        }

    }

}




/* ::::::::::::::::::::::::::::::::::::::::::::::::

    ================ Menu ================
    
:::::::::::::::::::::::::::::::::::::::::::::::: */

var device_width = window.innerWidth;

if(device_width > 600){

    window.onscroll = function(){
        
        if(window.scrollY <= 0){
            $('.wrap_menu').removeClass('fixed');
        }else{
            $('.wrap_menu').addClass('fixed');
        }
    }

}

$('.mb_list_tit').on('click',function(e){
    e.preventDefault();
    $('.mb_list_tit').siblings('.menu_mb_slist').slideUp();
    $(this).siblings('.menu_mb_slist').slideToggle();

})

$('.close_pop').on('click',function(){
    $('.wrap_popup').css('display','none');
})

$('.close_pop02').on('click',function(){
    $('.wrap_popup02').css('display','none');
})

$('.close_pop03').on('click',function(){
    $('.wrap_popup03').css('display','none');
})

