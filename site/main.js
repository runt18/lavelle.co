var n = $('.name');

$('a').on('mouseover', function() {
    n.text($(this).attr('data-name'));
}).on('mouseout', function() {
    n.empty();
});
