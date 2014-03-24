// Usado solo para la mostrar mostrar la ayuda
$('[data-toggle=popover]').popover({trigger: 'click'});
$('[data-toggle=popover]').on('show.bs.popover', function (event) {
    $('[data-toggle=popover]').each(function () {
        if (event.target != this) {
            $(this).popover('hide');
        }
    });
});