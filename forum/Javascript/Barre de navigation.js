// PLACEMENT : sur toutes les pages

$(function() {
    $(function() {
        $('#online-avatar').prepend(_userdata.avatar);

        $('#fa_notifications').contents().filter(function() {
            return this.nodeType === 3;
          }).replaceWith(function() {
              return this.nodeValue.replace('Notifications','<i class="bi bi-bell-fill"></i>');
          });

        $('#fa_welcome').contents().filter(function() {
            return this.nodeType === 3;
        }).replaceWith(function() {
            return this.nodeValue.replace('Bienvenue ','');
        });

        $('.subforum').contents().filter(function() {
            return this.nodeType === 3;
          }).replaceWith(function() {
              return this.nodeValue.replace(', ','');
          });

        $('.navigation_chain').contents().filter(function() {
            return this.nodeType === 3; 
        }).replaceWith(function() {
            return this.nodeValue.replace('::','▬').trim();
        });

        $('.topic-type').contents().replaceWith(function() {
            return $(this).text().replace(':','').trim();
        });
    });
});