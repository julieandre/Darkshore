{JAVASCRIPT}

<!----------------------------------------------->
<!-- CONNEXION RAPIDE (haut) -------------->


<!-- BEGIN switch_user_login_form_header -->
<div class="panel">
    <form action="{S_LOGIN_ACTION}" method="post" name="form_login">
        <div class="user_login_form center">
            <!-- Nom utilisateur -->
            <label>{L_USERNAME} : <input class="post" type="text" size="10" name="username" /></label> &nbsp;

            <!-- Mot de passe -->
            <label>{L_PASSWORD} : <input class="post" type="password" size="10" name="password" /></label> &nbsp;

            <!-- Check : connexion automatique -->
            <label>{L_AUTO_LOGIN} : <input class="radio" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED} /></label> &nbsp;

            <!-- Bouton connexion -->
            {S_HIDDEN_FIELDS}<input class="mainoption button1" type="submit" name="login" value="{L_LOGIN}" />
        </div>
    </form>
</div>
<!-- END switch_user_login_form_header -->


<!----------------------------------------------->
<!-- PAGE D'ACCUEIL -------------->

<!-- BEGIN message_admin_index -->
<div class="panel introduction">
    <!-- Titre de la PA -->
    <!-- BEGIN message_admin_titre -->
    <div class="h3">{message_admin_index.message_admin_titre.MES_TITRE}</div>
    <!-- END message_admin_titre -->

    <!-- Contenu de la PA -->
    <!-- BEGIN message_admin_txt -->
    <div class="mes-txt">{message_admin_index.message_admin_txt.MES_TXT}</div>
    <!-- END message_admin_txt -->
</div>
<!-- END message_admin_index -->

<div id="toplinks"></div>
<div id="pa" class="contour">
    <div id="season">test</div>

    <div class="pa-body">
        <div class="pa-left">
            <div id="actus"></div>
            
            <div class="pa-title">actualités</div>
            
            <div id="pa-staff" class="onglets">
                <div class="onglets-buttons">
                    <div class="onglet-label onglet1">
                        <img src="https://images2.imgbox.com/ee/ce/GfZXCQGQ_o.png" class="pa-staff-img">
                    </div>
                    <div class="onglet-label onglet2 visible">
                        <img src="https://images2.imgbox.com/5a/ad/u08XiBYB_o.gif" class="pa-staff-img">
                    </div>
                    <div class="onglet-label onglet3">
                        <img src="https://images2.imgbox.com/88/15/9koj3pYz_o.png" class="pa-staff-img">
                    </div>
                </div>
                <div class="onglets-contents">
                    <div class="onglet-content onglet1">
                        <div class="pa-staff-titre">chat.noir</div>
                        <div class="pa-staff-sous-titre">
                            fondatrice ‡ <a href="https://darkshore-detroit.forumactif.com/privmsg?mode=post&amp;u=4">mp</a>
                        </div>
                    </div>
                    <div class="onglet-content onglet2 visible">
                        <div class="pa-staff-titre">fate</div>
                        <div class="pa-staff-sous-titre">
                            inquisitrice ‡ <a href="https://darkshore-detroit.forumactif.com/privmsg?mode=post&amp;u=1">mp</a>
                        </div>
                    </div>
                    <div class="onglet-content onglet3">
                        <div class="pa-staff-titre">.tetra</div>
                        <div class="pa-staff-sous-titre">
                            fondatrice ‡ <a href="https://darkshore-detroit.forumactif.com/privmsg?mode=post&amp;u=2">mp</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="infos"></div>
        </div>
        <div class="pa-middle">
            <div id="contexte-container">
                <div id="contexte-img"></div>
                <div id="contexte"></div>
            </div>

            <div class="pa-title">contexte</div>
            
            <div id="pa-commu">
                <a id="pa-discord" target="_blank" href="#">
                    COMMUNAUTÉ DISCORD <img src="https://zupimages.net/up/24/38/k37s.gif" />
                </a>
                
                <select id="partenaires" onchange="window.open(this.value, '_blank')">
                    <option selected="select_partenaire" disabled>NOS TOP PARTENAIRES</option>
                </select>
            </div>

            <div id="playlist"></div>
        </div>
        <div class="pa-right">
        
            <div id="scenarii"></div>
            
            <div class="pa-title">wanted</div>
        
            <div id="last-messages"></div>
            
            <div class="pa-title">derniers messages</div>
        </div>
    </div>
</div>

<script>
    pageaccueil();
</script>

<!----------------------------------------------->
<!-- CB (si affichée en haut) -------------->

{CHATBOX_TOP}


<!----------------------------------------------->
<!-- CATEGORIES -------------->
<!-- (template : index_box) -->

{BOARD_INDEX}


<!----------------------------------------------->
<!-- QUI EST EN LIGNE -------------->

<!-- BEGIN disable_viewonline -->
<div class="contour qeel-body">
    <div class="qeel-cat-title">
        <h2>the one above the other</h2>
    </div>
    <div class="qeel">
        <div class="qeel-left">
            <div class="qeel-left-header"></div>

            <!-- Connectés en ce moment -->
            <div id="online_users">
                <div class="qeel-title">ils déambulent</div>
                
                <div class="qeel-infos">
                    <!-- X connectés :: 1 membre, 0 invisible, 0 invité -->
                    <div id="total_users">{TOTAL_USERS_ONLINE}</div>

                    {LOGGED_IN_USER_LIST}
                </div>
            </div>
            
            <div class="qeel-stats">
                <!-- Total posts : X messages / Total users : X membres -->
                <div id="qeel_members">{TOTAL_USERS}</div>
                <div id="qeel_posts">{TOTAL_POSTS}</div>
            </div>
        </div>

        <div class="qeel-middle">
            <!-- Dernier inscrit -->
            <div class="qeel-subtitle">nouvelle victime de <underr>fate</underr> ;</div>

            <div id="last_user">
                <div id="lastuser_avatar"></div>
            
                <div id="newest_user">
                    {NEWEST_USER}
                </div>
            </div>

            <a class="groups epique" href="/g5-epique">epique</a>
            <a class="groups tragique" href="/g6-tragique">tragique</a>
            <a class="groups fatidique" href="/g4-fatidique">fatidique</a>
        </div>

        <div class="qeel-right">
            <div class="qeel-right-header"></div>

            <!-- Derniers connectés au cours de ces Xh -->
            <div class="qeel-last_connected" id="last_connected">
                <div class="qeel-title">ils ont erré</div>
                <div class="qeel-users">{L_CONNECTED_MEMBERS}</div>
            </div>
        </div>
    </div>
</div>



<!-- Changement de texte des informations du QEEL -->
<script type="text/javascript">
  $("#last_user").html($("#last_user").html().replace("L'utilisateur enregistré le plus récent est", ""));
  
  $("#qeel_posts").html($("#qeel_posts").html().replace("Nos membres ont posté un total de", ""));
  $("#qeel_posts").html($("#qeel_posts").html().replace("messages", "blessures"));
  
  $("#qeel_members").html($("#qeel_members").html().replace("Nous avons", ""));
  $("#qeel_members").html($("#qeel_members").html().replace("membres enregistrés", "damnés"));
  
  $("#total_users").html($("#total_users").html().replace(/Il y a en tout/, "dans les ombres, "));
  $("#total_users").html($("#total_users").html().replace(/utilisateur(s?) en ligne ::/,"spectre$1 égaré$1 :"));
  $("#total_users").html($("#total_users").html().replace(/Enregistré(s?)/,"habitant$1"));
  $("#total_users").html($("#total_users").html().replace(/Invisible(s?) et/,"discret$1, mais aussi"));
  $("#total_users").html($("#total_users").html().replace(/Invité(s?)/,"potentielle$1 victime$1 pour l'inquisitrice. "));
  $("#total_users").html($("#total_users").html().replace(/ :: /,""));

  $("#online_users").html($("#online_users").html().replace("Utilisateurs enregistrés :", ""));
  
  $("#last_connected").html($("#last_connected").html().replace("Membres connectés au cours des 48 dernières heures :", ""));
</script>


<!-- Conteneur des infos CB -->
<!-- BEGIN switch_chatbox_activate -->
  
  <div class="panel">
      <!-- Nom de la CB -->
      <div class="h3"><a href="{S_JOIN_CHAT}" target="ChatBox">{CHATBOX_NAME}</a></div>
  
      <!-- Nombre et liste des connectés sur la CB -->
      {TOTAL_CHATTERS_ONLINE}&nbsp;:&nbsp;{CHATTERS_LIST}<br />
  
      <!-- BEGIN switch_chatbox_popup -->
      <!-- Lien pour rejoindre la CB -->
      <div id="chatbox_popup"></div>
      <script type="text/javascript">
          insertChatBoxPopup('{disable_viewonline.switch_chatbox_activate.switch_chatbox_popup.U_FRAME_CHATBOX}', '{L_CLICK_TO_JOIN_CHAT}');
  
      </script>
      <!-- END switch_chatbox_popup -->
    
  </div>
<!-- END switch_chatbox_activate -->
<!-- Fin des infos CB -->


<!-- END disable_viewonline -->
<!-- Fin du QEEL -->


<!----------------------------------------------->
<!-- CB (si affichée en bas) -------------->
{CHATBOX_BOTTOM}



{AUTO_DST}
            