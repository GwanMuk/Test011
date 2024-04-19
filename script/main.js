
 
 function slide(){

   $('.mainbox').stop().animate({marginLeft:-1920}, function(){

    $('.mainbox li:first').appendTo('.mainbox');

    $('.mainbox').css({marginLeft:0});

   });


  }
setInterval(slide, 5000);

$(function () {

            $.ajax({

                url: "img/product.json",

                dataType: "json",

                success: function (data) {

                    if (data.length > 0) {

                        for (var i in data) {

                            $(".box").eq(i).append('<div><a href="#">' + "<img src='img/" + data[i].url + "'/>" + '</a></div>');
                            $(".box").eq(i).append('<h5><a href="#">' + data[i].title + "</a><h5>");
                            $(".box").eq(i).append('<p><a href="#">' + data[i].subtitle + "</a></p>");
                            $(".box").eq(i).append("<span>" + data[i].price + "</span>");
                            //review random count
                            
                            /*$(".box").eq(i).append("<button>" + count + " BEST" + "</button>");*/
                        }
                    }
                }
            });
        });

       