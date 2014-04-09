// Usado solo para la mostrar mostrar la ayuda
$('[data-toggle=popover]').popover({trigger: 'click',html:true});
$('[data-toggle=popover]').on('show.bs.popover', function (event) {
    $('[data-toggle=popover]').each(function () {
        if (event.target != this) {
            $(this).popover('hide');
        }
    });
});
$('ul.nav > li.dropdown > ul').on('shown.bs.dropdown', function () {
    var that = this;
    var nav = (that.nodeName == nav || $(that).hasClass('nav'));
    var i = 0;
    while (i++ < 2 && !nav) {
        that = that.parentNode;
        nav = (that.nodeName == nav || $(that).hasClass('nav'));
        if ($(that).hasClass('dropdown')) $(that).removeClass("open").addClass("open");
    }
});