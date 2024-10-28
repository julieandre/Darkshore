// PLACEMENT : sur toutes les pages

// [SPANISH] by Flerex
// https://flerex.dev/entradas/clases-unicas-a-los-campos-del-miniperfil

// Options, by Monomer
// Possibilité de déplacer un champs dans un autre élément

// Multiple options, by Glycorne

!function () {

    const settings = {
        semicolon: false, // false = retire les (:) après un nom de champs
        cleanUp: true,

        // GERER LE DEPLACEMENT DES CHAMPS DE PROFIL
        //
        // CIBLER UN CHAMP :
        // - Nom du champ en MINISCULE et SANS ACCENT (exemple : 'message' ou 'date-dinscription') 
        // - Remplacez les espaces par un tiret (exemple : 'etat-civil')
        // - Listez plusieurs champs par une virgule (exemple : 'champ', 'champ')
        //
        // LE DEPLACER :
        // La class de l'élément dans lequel les champs seront déplacés

        moves : [ 
            { 
                move: ['faceclaim'], //-- cibler un champ
                postMoveTo: '.post_avatar_hidden_fields', //-- le déplacer (dans les messages)
                profileMoveTo: '#user_fc', //-- le déplacer (dans les profils)
            },
            { 
                move: ['pseudo'], //-- cibler un champ
                postMoveTo: '.post_footer_pseudo', //-- le déplacer (dans les messages)
                profileMoveTo: '.profile-bottom', //-- le déplacer (dans les profils)
            },
            { 
                move: ['image-texte-profil'], //-- cibler un champ
                postMoveTo: '.post_freezone', //-- le déplacer (dans les messages)
                profileMoveTo: '#profile-freezone', //-- le déplacer (dans les profils)
            },
            { 
                move: ['autres-visages', 'date-de-naissance', 'credits'], //-- cibler un champ
                postMoveTo: '.post_irlzone', //-- le déplacer (dans les messages)
                profileMoveTo: '#profile-irlzone', //-- le déplacer (dans les profils)
            },
            { 
                move: ['contact'], //-- cibler un champ
                postMoveTo: '.post_irlzone', //-- le déplacer (dans les messages)
                profileMoveTo: '.profile-bottom', //-- le déplacer (dans les profils)
            },
            { 
                move: ['cicatrices', 'anima', 'en-ville-depuis'], //-- cibler un champ
                postMoveTo: '.post_avatar_hidden_fields', //-- le déplacer (dans les messages)
                profileMoveTo: '.profile-bottom', //-- le déplacer (dans les profils)
            } ]
    },

        slugify = str => {
            const from = 'àáäâãåăæçèéëêǵḧìíïîḿńǹñòóöôœøṕŕßśșțùúüûǘẃẍÿź·/_,:;',
                to = 'aaaaaaaaceeeeghiiiimnnnooooooprssstuuuuuwxyz------',
                reg = new RegExp(from.split('').join('|'), 'g');

            return str.trim().toLowerCase()
                .replace(/\s+/g, '-')
                .replace(reg, c => to.charAt(from.indexOf(c)))
                .replace(/&/g, '-and-')
                .replace(/[^\w\-]+/g, '')
                .replace(/\-\-+/g, '-')
                .replace(/^-+/, '')
                .replace(/-+$/, '');
        },

        hideSemicolon = (label, name) => {
            if (label.firstElementChild)
                label.lastChild.remove();
            else
                label.textContent = name;
        },

        main = _ => {
            document.querySelectorAll('.user_field:not(.moved)').forEach(p => {
                const labelcontainer = p.querySelector('.field_label'),
                    label = labelcontainer.querySelector('.label'),
                    name = label.textContent.replace(/ *: *$/, ''),
                    slug = slugify(name);

                p.classList.add('field-' + slug);
                p.classList.add('moved');

                settings.moves.forEach(moveElem => {
                    if (moveElem.move.includes(slug)) {
                        p.closest('.post_row').querySelector(moveElem.postMoveTo).appendChild(p);
                    }
                });

                if (settings.cleanUp) {
                    labelcontainer.textContent = settings.semicolon ? name + ': ' : name;
                } else if (!settings.semicolon) {
                    hideSemicolon(label, name)
                }
            });

            document.querySelectorAll('.profile_infos .profile_field:not(.moved)').forEach(p => {
                const label = p.querySelector('.field_label'),
                    name = label.textContent.replace(/ *: *$/, ''),
                    slug = slugify(name);

                p.classList.add('field-' + slug);
                p.classList.add('moved');

                settings.moves.forEach(moveElem => {
                    if (moveElem.move.includes(slug)) {
                        p.closest('.profile-content').querySelector(moveElem.profileMoveTo).appendChild(p);
                    }
                });

                if (settings.cleanUp) {
                    label.textContent = settings.semicolon ? name + ': ' : name;
                } else if (!settings.semicolon) {
                    hideSemicolon(label, name)
                }
            });

        };

    document.addEventListener('DOMContentLoaded', main);
    document.addEventListener('wombat_load', main);
}();