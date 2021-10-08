'use strict';

// 解決策エリアの表示
$(function() {
  // ユーザー名の表示
  $('#result-name').delay(10000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 悩みの表示
  $('#trouble-name').delay(11000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 「解決方法は、」の表示
  $('#result-text').delay(13000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 「筋トレ」の表示
  $('#solution').delay(16000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 理由の表示
  $('#result-reason').delay(18000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  // 名言エリア
  $('#wise-saying-label').delay(20000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  $('#wise-saying').delay(22000).queue(function(){
    $(this).addClass('is-opacity-active');
  });

  $('#syawing-person').delay(23000).queue(function(){
    $(this).addClass('is-opacity-active');
  });
});
