'use strict';

// 解決策エリアの表示
$(function() {
  // ユーザー名の表示
  $('#result-name').delay(10000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 悩みの表示
  $('#trouble-name').delay(10500).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 「解決方法は、」の表示
  $('#result-text').delay(11500).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 「筋トレ」の表示
  $('#solution').delay(12500).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 理由の表示
  $('#result-reason').delay(13500).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 画像
  $('#result-img').delay(14000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 名言エリア
  $('#wise-saying-label').delay(15000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  $('#wise-saying').delay(15500).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  $('#syawing-person').delay(16000).queue(function(){
    $(this).addClass('is-opacity-active');
  });
});
