// PLACEMENT : sur toutes les pages

!function () {

  const main = _ => {

    console.log("replace img");
    
    // BOUTON DE CONTACT 
    $('.profile-contact .profile-contact-field:nth-of-type(0) img').replaceWith("Envoyer un MP");
    $('.profile-contact #field_id-10 img').replaceWith("Fiche de présentation");
    $('.profile-contact #field_id6 img').replaceWith("Carnet de bord");
    $('.profile-contact #field_id7 img').replaceWith("Moodboard");
    $('.profile-contact #field_id8 img').replaceWith("Instagram");
    $('.profile-contact #field_id9 img').replaceWith("Playlist");

    $('.i_icon_profile, #i_icon_profile').replaceWith("Profil"); // Voir profil
    $('.i_icon_pm, #i_icon_pm').replaceWith("Contact"); // Envoyer un MP

    // https://images2.imgbox.com/0d/5d/AY2ArubN_o.png -- Présentation
    // https://images2.imgbox.com/1d/e2/PCwpz6P7_o.png -- Carnet de bord
    // https://2img.net/images2.imgbox.com/d1/97/WiQJwg5A_o.png -- Moodboard
    // https://images2.imgbox.com/4e/13/QAbowl7h_o.png -- Instagram
    // https://images2.imgbox.com/e1/ce/aytNl82N_o.png -- Playlist
    $('.post_footer_links img[src="https://images2.imgbox.com/0d/5d/AY2ArubN_o.png"]').replaceWith("Présentation");
    $('.post_footer_links img[src="https://images2.imgbox.com/1d/e2/PCwpz6P7_o.png"]').replaceWith("Carnet");
    $('.post_footer_links img[src="https://2img.net/images2.imgbox.com/d1/97/WiQJwg5A_o.png"]').replaceWith("Moodboard");
    $('.post_footer_links img[src="https://images2.imgbox.com/4e/13/QAbowl7h_o.png"]').replaceWith("Instagram");
    $('.post_footer_links img[src="https://images2.imgbox.com/e1/ce/aytNl82N_o.png"]').replaceWith("Playlist");
    // Si plus de bouton de contact, ajoutez la même ligne en changeant nth-of-type(4), (5), ... ce qui correspond à l'ordre d'apparition

    // Pour les boutons de contact affichée dans le profil seul, utilisez l'inspecteur d'élément pour trouver l'ID correspondant au bouton
    // $('#field_idxxx img').replaceWith("Autre");

    // BOUTON DE SUJET 
    $('.newtopic_button').replaceWith("Nouveau"); // Ouvrir un nouveau sujet
    $('.reply_button').replaceWith("Répondre"); // Répondre au sujet
    
    $('.newpm_button img').replaceWith("Nouveau message privé"); // Envoyer un nouveau MP
    $('.replypm_button img').replaceWith("Répondre au message"); // Répondre au MP
    
    // BOUTON EDITION DE MESSAGE
    $('.i_icon_quote, #i_icon_quote').replaceWith("Citer"); // Bouton "citer" dans les MP
    $('.i_icon_edit').replaceWith("Editer"); // Bouton "éditer"
    $('.i_icon_delete, #i_icon_delete').replaceWith("Supprimer"); // Bouton "supprimer" dans les MP et sondage
    $('.i_icon_ip').replaceWith("IP"); // Bouton "IP"
   };

   document.addEventListener('DOMContentLoaded', main);
   document.addEventListener('wombat_load', main);
  
}();