// PLACEMENT : sur toutes les pages

$(document).ready(function() {
    $(".onglets").each(function() {
        $(".onglet-label").click(function() {
            // Ajoute la classe "visible" à l'onglet cliqué et la retire des autres onglets
            $(this).siblings().removeClass("visible");
            $(this).addClass("visible");

            // Récupère la classe de l'onglet cliqué (ex: onglet1, onglet2, etc.)
            var selectedClass = $(this).attr('class').split(' ').filter(function(cls) {
                return cls.startsWith('onglet') && !cls.startsWith('onglet-');
            })[0];

            // Ajoute la classe "visible" au contenu correspondant à l'onglet cliqué
            $(this).parent().next().find("." + selectedClass).addClass("visible").siblings().removeClass("visible");
        });
    });
});