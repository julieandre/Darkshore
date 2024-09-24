<!----------------------------------------------->
<!-- LIENS DE NAVIGATION -------------->

<div class="navigation_links">
    <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
    <span class="navigation_chain">
        <a href="{U_INDEX}">Remnant Dawn</a> {NAV_CAT_DESC}
    </span>
</div>

<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="manage_forum">
    <div class="manage_forum_buttons">
        <!-- Boutons : nouveau -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" rel="nofollow"><img class="newtopic_button" src="{POST_IMG}" class="{POST_IMG_CLASS}" alt="{L_POST_NEW_TOPIC}" /></a>&nbsp;
        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <a class="buttons" href="{U_POST_REPLY_TOPIC}"><img class="reply_button" src="{REPLY_IMG}" class="i_reply" alt="{L_POST_REPLY_TOPIC}" /></a>
        <!-- END switch_user_authreply -->
    </div>

    <div class="manage_forum_pagination">
        <!-- Pagination -->
        <span class="pagination page-topic">
            {PAGINATION}
        </span>
    </div>
</div>

<!----------------------------------------------->
<!-- MESSAGE -------------->

<!-- Liste des participants du sujet -->
{POSTERS_LIST}

<!-- Titre du poste -->
<h1 class="post-title">{TOPIC_TITLE}</h1>

<!-- Sondage (template : viewtopic_poll_ballot /// viewtopic_poll_result) -->
{POLL_DISPLAY}

<!-- Affichage d'un message -->
<!-- BEGIN postrow -->
<!-- BEGIN displayed -->
<div class="post_ancre" id="{postrow.displayed.U_POST_ID}"></div>
<div class="post post_row post--{postrow.displayed.U_POST_ID}" id="p{postrow.displayed.U_POST_ID}">

    <div class="post_content">
        <!-- Colonne de profil -->
        <div class="post_profile" id="profile{postrow.displayed.U_POST_ID}">

            <div class="post_profile_cadre">
                <!-- Pseudo -->
                <span class="post_pseudo">{postrow.displayed.POSTER_NAME}</span><br />

                <!-- Avatar -->
                <div class="post_avatar">
                    <div class="post_avatar_hidden"></div>
                    {postrow.displayed.POSTER_AVATAR}
                </div>

                <!-- Rang -->
                <span class="post_rank">
                    {postrow.displayed.RANK_IMAGE} <!-- Image -->
                    {postrow.displayed.POSTER_RANK_NEW} <!-- Textuel -->
                </span>

                <!-- Citation -->
                <span class="post_quote"></span>

                <span data-id="{postrow.displayed.U_POST_ID}" class="material-icons">arrow_outward</span>
            </div>

            <div class="post_userinfo">
                <div class="post_userinfo_hidden" data-id="{postrow.displayed.U_POST_ID}">
                    <!-- Champs de profil -->
                    <!-- BEGIN profile_field -->
                        <div class="user_field">
                            <!-- Label d'un champs de profil -->
                            <span class="field_label">{postrow.displayed.profile_field.LABEL}</span>
                        
                            <!-- Contenu d'un champs de profil -->
                            <span class="field_content">{postrow.displayed.profile_field.CONTENT}</span>
                        
                            <!-- Séparateur entre champs de profil -->                      
                            <span class="field_separator">{postrow.displayed.profile_field.SEPARATOR}</span>
                        </div>
                    <!-- END profile_field -->
                    <!-- Fin de champs de profil -->

                    <!-- Récompenses -->
                    <div {postrow.displayed.AWARDS_SHOW} id="list_awards">
                        {postrow.displayed.AWARDS}
                    </div>
                    <div class="award_more"></div>

                    <!-- Champs de profil de la feuille de personnage -->
                    {postrow.displayed.POSTER_RPG}
                </div>

                <div class="post_userfreezone"></div>
            </div>

            <script>
                document.querySelector('.post_profile_cadre .material-icons[data-id="{postrow.displayed.U_POST_ID}"]').addEventListener('click', function () {
                    document.querySelector('.post_profile_cadre .material-icons[data-id="{postrow.displayed.U_POST_ID}"]').classList.toggle('visible');
                    document.querySelector('.post_userinfo_hidden[data-id="{postrow.displayed.U_POST_ID}"]').classList.toggle('visible');
                });
            </script>

            

        </div>
        <!-- Fin colonne profil -->

        <div class="post_text">
            <!-- Conteneur informations du message-->
            <div class="post_details">

                <span class="post_date">
                    <!-- Lien d'ancre vers le message -->
                    <a href="{postrow.displayed.POST_URL}">#</a>
                &nbsp;
                    <!-- Date du message -->
                    <time>{postrow.displayed.POST_DATE_NEW}</time>
                </span>
                
                    <!-- Boutons d'édition de message -->
                    <ul class="profile-icons ">
                        <li>{postrow.displayed.QUOTE_IMG}</li>
                        <li>{postrow.displayed.EDIT_IMG}</li>
                        <li>{postrow.displayed.DELETE_IMG}</li>
                        <li>{postrow.displayed.IP_IMG}</li>
                    </ul>
            
                    <!-- Conteneur du bouton like -->
                    <!-- BEGIN switch_likes_active -->
                    <div class="like_button">

                        <!-- Bouton "j'aime" -->
                        <button class="rep-button {postrow.displayed.switch_likes_active.C_VOTE_LIKE}" data-href="{postrow.displayed.switch_likes_active.U_VOTE_LIKE}" data-href-rm="{postrow.displayed.switch_likes_active.U_VOTE_RM_LIKE}">
                            <!-- Texte "j'aime" -->
                            <span class="like_text">{postrow.displayed.switch_likes_active.L_LIKE}</span>
                            <!-- Compte des "j'aime" -->
                            {postrow.displayed.switch_likes_active.COUNT_VOTE_LIKE}
                        </button>

                        <!-- BEGIN switch_dislike_button -->
                        <!-- Bouton "feels" -->
                        <button class="rep-button {postrow.displayed.switch_likes_active.switch_dislike_button.C_VOTE_DISLIKE}" data-href="{postrow.displayed.switch_likes_active.switch_dislike_button.U_VOTE_DISLIKE}" data-href-rm="{postrow.displayed.switch_likes_active.switch_dislike_button.U_VOTE_RM_LIKE}">
                            <!-- Texte "feels" -->
                            <span class="like_text">{postrow.displayed.switch_likes_active.switch_dislike_button.L_DISLIKE}</span>
                            <!-- Compte des "feels" -->
                            {postrow.displayed.switch_likes_active.switch_dislike_button.COUNT_VOTE_DISLIKE}
                        </button>
                        <!-- END switch_dislike_button -->
                    </div>
                    <!-- END switch_likes_active -->
                    <!-- Fin du bouton like -->
            </div>
            <!-- Fin détails -->

            <!-- Contenu du message -->
            <div class="post_message postbody content">
                <div>{postrow.displayed.MESSAGE}</div>

                <!-- Signature -->
                <!-- BEGIN switch_signature -->
                <div class="signature_div" id="sig{postrow.displayed.U_POST_ID}">{postrow.displayed.SIGNATURE_NEW}</div>
                <!-- END switch_signature -->

            </div>
            <!-- Fin du contenu du message -->
        </div>
    </div>
    <div class="post_footer">
        <div class="post_footer_pseudo"></div>
        <div class="post_footer_links">
            <!-- BEGIN contact_field -->
            {postrow.displayed.contact_field.CONTENT}&nbsp;—&nbsp; <!-- Autre champs de contact -->
            <!-- END contact_field -->
            <!-- Lien de contact -->
            {postrow.displayed.PM_IMG} <!-- MP -->
            <!-- Autre contact-->
        </div>
    </div>
</div>

<!-- END displayed -->
<!-- END postrow -->
<!-- Fin affichage d'un message -->


<!----------------------------------------------->
<!-- REGLES DE LA CATEGORIE (si activé) -------------->

<!-- BEGIN switch_forum_rules -->
<div class="panel" id="forum_rules">

    <!-- Titre "règlement" -->
    <div class="h3">{L_FORUM_RULES}</div>

    <!-- Règlement -->
    <div class="postbody">
        <!-- Image du règlement -->
        <!-- BEGIN switch_forum_rule_image -->
        <img class="left logo" src="{RULE_IMG_URL}" alt="" />
        <!-- END switch_forum_rule_image -->

        <!-- Contenu -->
        {RULE_MSG}
    </div>
</div>
<!-- END switch_forum_rules -->


<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="manage_forum">
    <div class="manage_forum_buttons">
        <!-- Boutons : nouveau -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" rel="nofollow"><img class="newtopic_button" src="{POST_IMG}" class="{POST_IMG_CLASS}" alt="{L_POST_NEW_TOPIC}" /></a>&nbsp;
        <!-- END switch_user_authpost -->

        <!-- Bouton : répondre -->
        <!-- BEGIN switch_user_authreply -->
        <a class="buttons" href="{U_POST_REPLY_TOPIC}"><img class="reply_button" src="{REPLY_IMG}" class="i_reply" alt="{L_POST_REPLY_TOPIC}" /></a>
        <!-- END switch_user_authreply -->
    </div>
    <div class="manage_forum_pagination">
        <!-- Pagination -->
        <span class="pagination page-topic">
            {PAGINATION}
        </span>
    </div>
</div>


<!----------------------------------------------->
<!-- REPONSE RAPIDE -------------->

<div class="container quickreply" id="quickreply_content">
    <!-- BEGIN switch_user_logged_in -->
    {QUICK_REPLY_FORM}
    <!-- END switch_user_logged_in -->
</div>

<!----------------------------------------------->
<!-- LIENS DE NAVIGATION -------------->

<div class="navigation_links">
    <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
    <span class="navigation_chain">
        <a href="{U_INDEX}">Remnant Dawn</a> {NAV_CAT_DESC}
    </span>
</div>


<!----------------------------------------------->
<!-- BARRE DE GESTION 2 -------------->

<div class="links_bar links_bar_right">
    <!-- BEGIN switch_plus_menu -->
    <a href="{U_FAVOURITE_JS_PLUS_MENU}">Ajouter aux favoris</a>
    <!-- END switch_plus_menu -->

    <!-- Lien "surveiller le sujet" -->
    <!-- BEGIN switch_user_logged_in -->
    <!-- BEGIN watchtopic -->
    {S_WATCH_TOPIC}
    <!-- END watchtopic -->
    <!-- END switch_user_logged_in -->
</div>


<!----------------------------------------------->
<!-- SAUTER VERS UN AUTRE FORUM -------------->

<form action="{S_JUMPBOX_ACTION}" method="get" onsubmit="if(document.jumpbox.f.value == -1){return false;}" class="left">
    <fieldset class="jumpbox">
        <label>{L_JUMP_TO}:&nbsp;</label>
        {S_JUMPBOX_SELECT}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
</form>


<!----------------------------------------------->
<!-- BOUTONS DE MODERATION -------------->

<!-- BEGIN viewtopic_bottom -->
<form method="get" action="{S_FORM_MOD_ACTION}" class="right">
    <fieldset class="quickmod">
        <input type="hidden" name="t" value="{TOPIC_ID}" />

        <!-- <input type="hidden" name="sid" value="{S_SID}" /> -->
        <input type="hidden" name="{SECURE_ID_NAME}" value="{SECURE_ID_VALUE}" />
        <label>{L_MOD_TOOLS}:&nbsp;</label>
        {S_SELECT_MOD}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
  <span class="right">{S_TOPIC_ADMIN}</span>
</form>
<!-- END viewtopic_bottom -->

<div class="clear"></div>

<!-- Script image recadré -->
<!-- BEGIN switch_image_resize -->
<script type="text/javascript">
    //<![CDATA[
    $(resize_images({
        'selector': '.postbody .content',
        'max_width': {
            switch_image_resize.IMG_RESIZE_WIDTH
        },
        'max_height': {
            switch_image_resize.IMG_RESIZE_HEIGHT
        }
    }));
    //]]>

</script>
<!-- END switch_image_resize -->


<!-- BEGIN switch_plus_menu -->
<script type="text/javascript">
    //<![CDATA[
    var multiquote_img_off = '{JS_MULTIQUOTE_IMG_OFF}',
        multiquote_img_on = '{JS_MULTIQUOTE_IMG_ON}';

</script>
<!-- END switch_plus_menu -->
<script type="text/javascript">
    var hiddenMsgLabel = {
        visible: '{JS_HIDE_HIDDEN_MESSAGE}',
        hidden: '{JS_SHOW_HIDDEN_MESSAGE}'
    };
    showHiddenMessage = function(id) {
        try {
            var regId = parseInt(id, 10);
            if (isNaN(regId)) {
                regId = 0;
            }

            if (regId > 0) {
                $('.post--' + id).toggle(0, function() {
                    if ($(this).is(":visible")) {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.visible);
                    } else {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.hidden);
                    }
                });
            }
        } catch (e) {}

        return false;
    };

    //]]>

</script>

            