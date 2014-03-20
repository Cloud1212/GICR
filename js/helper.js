// Usado solo para la mostrar mostrar la ayuda
$('[data-toggle=popover]').popover({ trigger: 'click', html: true });
$('[data-toggle=popover]').click(function (e) { e.preventDefault();})
$('[data-toggle=popover]').on('show.bs.popover', function (event) {
    $('[data-toggle=popover]').each(function () {
        if (event.target != this) {
            $(this).popover('hide');
        }
    });
});