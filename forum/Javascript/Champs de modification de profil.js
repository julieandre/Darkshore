// PLACEMENT : sur toutes les pages

// Important : pas de couleur ni icône sur les champs
// By Glycorne

!function () {

    const settings = {
        inputs : ['usure et le temps', 'myocarde', 'sanctuaire', 'occupation', 'ombres et névroses']
    },

    main = _ => {
        // Sélectionner tous les éléments 'dl' qui contiennent un input de type texte dans la classe 'profil-rp'
        document.querySelectorAll('.profil-rp dl:has(input[type="text"])').forEach(dl => {

            settings.inputs.forEach(input => {
                // Vérifier si le contenu de <dt> contient l'input
                const dtText = dl.querySelector("dt")?.textContent || '';
                if (dtText.includes(input)) {
                    const inputMod = $(dl).find("input");
                    
                    // Créer le div avec contenteditable
                    const editableDiv = $('<div>', {
                        contenteditable: 'true',
                        text: inputMod.val(),
                        class: 'profil-rp-editable-div'
                    });
                    
                    // Créer le div d'explication
                    const infoDiv = $('<div>', {
                        text: "Attention, ce champ n'accepte pas le bbcode ni les sauts à la ligne. Il s'agit d'une mise en forme pour le confort de lecture et d'écriture de vos profils.",
                        class: 'profil-rp-info-div'
                    });

                    inputMod.addClass('profil-rp-input-mod');

                    // Ajouter les div au début de <dd>
                    $(dl).find("dd").prepend(infoDiv);
                    $(dl).find("dd").prepend(editableDiv);

                    // À chaque modification du div, mettre à jour l'input avec la valeur du div
                    editableDiv.on('input', function() {
                        const content = $(this).text();  // Récupérer le contenu du div
                        inputMod.val(content);           // Mettre à jour l'input
                    });
                }
            });
        });
    };

    document.addEventListener('DOMContentLoaded', main);
}();