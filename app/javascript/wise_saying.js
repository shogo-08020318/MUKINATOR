// $(function() {
//   var h = $(window).height();
  
//   $('#wrap').css('display','none');
//   $('#loader-bg ,#loader').height(h).css('display','block');
// });
  
// $(window).load(function () { //全ての読み込みが完了したら実行
//   $('#loader-bg').delay(900).fadeOut(800);
//   $('#loader').delay(600).fadeOut(300);
//   $('#wrap').css('display', 'block');
// });
  
// //10秒たったら強制的にロード画面を非表示
// $(function(){
//   setTimeout('stopload()',3000);
// });
  
// function stopload(){
//   $('#wrap').css('display','block');
//   $('#loader-bg').delay(900).fadeOut(800);
//   $('#loader').delay(600).fadeOut(300);
// }

'use strict';

$(window).on('load', function(){
  $('#loading').delay(900).fadeOut(1000);
  console.log("ローディング完了");
});

// $(function(){
//   setTimeout('stopload()', 10000);
// })

function stopload(){
  $('#loading').delay(900).fadeOut(1000);
  console.log("3秒経過");
}