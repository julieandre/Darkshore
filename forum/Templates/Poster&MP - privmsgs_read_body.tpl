<!----------------------------------------------->
<!-- MENU DE LA BOÎTE DE RECEPTION -------------->

<div id="tabs" class="private_msg">
    <ul>
        <!-- Boîte de reception (image / lien) -->
        <li>{INBOX}</li>
        <!-- Messages envoyés (image / lien) -->
        <li>{SENTBOX}</li>
        <!-- Boîte d'envoi (image / lien) -->
        <li>{OUTBOX}</li>
        <!-- Archives (image / lien) -->
        <li>{SAVEBOX}</li>
    </ul>
</div>

<div class="container mp">
    <!-- Tire du message -->
    <div class="cate_title"><h2>{POST_SUBJECT}</h2></div>

    <form action="{S_PRIVMSGS_ACTION}" method="post">

    <!----------------------------------------------->
    <!-- AFFICHAGE DU MESSAGE -------------->

        <!-- Conteneur du message -->
        <div class="message post_content">

            <!-- Profil de l'expéditeur -->
            <div class="message_profil post_profile">

                <!-- pseudo -->
                <span class="post_pseudo">
                    <a href="#">{MESSAGE_FROM}</a>
                </span>

                <!-- avatar -->
                <div class="post_profile_cadre">
                    <div class="post_avatar">
                        <a href="#">
                            {AVATAR_FROM}
                        </a>
                    </div>
                </div>

                <!-- Lien-image de contact -->
                <!-- BEGIN switch_user_contact -->
                {PROFILE_IMG}
                <!-- END switch_user_contact -->
            </div>

            <script type="text/javascript">
                const messageLink = $('.message_profil > a').attr('href');
                if (messageLink) {
                    $('.post_avatar a').attr('href', messageLink);
                    $('.post_pseudo a').attr('href', messageLink);
                }
            </script>

            <div class="message_text post_text">
                <!-- Conteneur des informations du message -->
                <div class="message_infos post_details">
                    <!-- De XX à XX -->
                    <span>envoyé à {MESSAGE_TO}</span>

                    <!-- Boutons d'édition -->
                    <ul class="mp-icons profile-icons">
                        <!-- BEGIN switch_quote -->
                        <li>{QUOTE_PM_IMG}</li>
                        <!-- END switch_quote -->
                        <li>{EDIT_PM_IMG}</li>
                    </ul>

                    <span class="post_date">▬&nbsp;<time>{POST_DATE}</time>&nbsp;▬</span>
                </div>

                <!-- contenu du MP -->
                <div class="message_content post_message postbody content">
                    {MESSAGE}
                </div>
            </div>

        </div>
        <!-- Fin du conteneur message -->

        <!----------------------------------------------->
        <!-- BARRE DE GESTION -------------->
        <div class="message_rep">
            <!-- Bouton: répondre -->
            <!-- BEGIN switch_post_reply -->
            <a href="{REPLY_PM_URL}" rel="nofollow" title="{REPLY_PM_IMG}" class="replypm_button buttons">{REPLY_PM_IMG}</a>
            <!-- END switch_post_reply -->
        </div>

    
        <!----------------------------------------------->
        <!-- BOUTONS DE GESTION -------------->
        <br/>
        <fieldset class="submit-buttons">
            {S_HIDDEN_FIELDS}
            <!-- BEGIN switch_save -->
            <input class="button2" type="submit" name="save" value="{L_SAVE_MSG}" />&nbsp;&nbsp;
            <!-- END switch_save -->

            <!-- BEGIN switch_move_profile -->
            <input class="button2" type="submit" name="moveprofile" value="{L_MOVE_PROFILE}" />&nbsp;&nbsp;
            <!-- END switch_move_profile -->

            <input class="button2" type="submit" name="delete" value="{L_DELETE_MSG}" />
        </fieldset>

    <!-- Fin de l'affichage du message -->

    </form>
</div>

<!----------------------------------------------->
<!-- HISTORIQUE DES MESSAGES -------------->
<!-- (template : privmsg_topic_review)-->

<!-- BEGIN switch_review_box -->
{TOPIC_REVIEW_BOX}
<!-- END switch_review_box -->

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

            