// $(function() {
//   let h = $(window).height();

//   $('#wrap').css('display','none');
//   $('#loading ,#loader').height(h).css('display','block');
// });
  
// $(window).load(function () { //全ての読み込みが完了したら実行
//   $('#loading').delay(900).fadeOut(800);
//   $('#loader').delay(600).fadeOut(300);
//   $('#wrap').css('display', 'block');
// });

// // //10秒たったら強制的にロード画面を非表示
// $(function(){
//   setTimeout('stopload()', 10000);
// })

// function stopload(){
//   $('#loading').delay(900).fadeOut(1000);
//   console.log("3秒経過");
// }

// function stopload(){
//   $('#wrap').css('display','block');
//   $('#loading').delay(900).fadeOut(800);
//   $('#loader').delay(600).fadeOut(300);
// }

'use strict';

// $(window).on('load', function(){
//   $('#loading').delay(5000).fadeOut(1000);
//   console.log("ローディング完了");
// });

$(document).ready(function() {
  $('.loading-wise-saying, .loading-person').delay(3000).fadeIn(1500);
  $('#loading').delay(8000).fadeOut(1500);
});

// $(document).ready(function() {
//   console.log('筋トレ名言');
//   let saying = $('.loading-wise-saying');
//   let person = $('.loading-person');
//   saying.delay(1000).removeClass('is-hide');
//   person.delay(1500).removeClass('is-hide');
//   $('#loading').delay(5000).fadeOut(1500);
// });
