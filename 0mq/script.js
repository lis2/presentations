$(function() {
  $('div.content').live('showoff:show', function(evt) {
    var link = $('a', evt.target).filter(':contains("background")');
    var old_bg = '';
    if(link.size() > 0) {
      link.hide();
      var src = link.first().attr('href');
      $('body').addClass('fullScreen');
      $('body').css('background-image', 'url(' + src + ')');
    } else {
      $('body').css('background-image', old_bg).removeClass('fullScreen');
    }
  });
});
