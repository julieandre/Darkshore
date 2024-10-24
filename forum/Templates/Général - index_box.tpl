<!----------------------------------------------->
<!-- CATEGORIES -------------->

<div class="contour categories">

<!-- Conteneur d'une catégorie -->
<!-- BEGIN catrow -->


<!-- BEGIN tablehead -->
<div class="category" id="{catrow.tablehead.ID}">

    <!-- Titre catégorie -->
    <div class="cate_title">{catrow.tablehead.L_FORUM}</div>


    <!-- Conteneur liste des forums -->
    <div class="forums">

<!-- END tablehead -->


        <!-- BEGIN forumrow -->
        <!-- Affichage d'un forum -->
        <div class="forum row {catrow.forumrow.FOLDER_CLASSNAME}">
            <div class="forum_title">
                <!-- Titre forum -->
                <a href="{catrow.forumrow.U_VIEWFORUM}" class="forumtitle">{catrow.forumrow.FORUM_NAME}</a>
            </div>

            <div class="forum_content">
                <!-- Statut du forum : sans réponse, nouvelle réponse, vérouillé -->
                <div class="forum-img"></div>

                <div class="forum_details">

                    <!-- Description -->
                    <div class="forum_desc">{catrow.forumrow.FORUM_DESC}</div>

                    <!-- Liens de sous-forum -->
                    <span class="subforum">{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}</span>
                </div>

                <div class="forum_avatar lastpostavatar">
                    <!-- Avatar du dernier posteur -->
                    <!-- BEGIN avatar -->
                        {catrow.forumrow.avatar.LAST_POST_AVATAR}
                    <!-- END avatar -->
                </div>

                <!-- Conteneur du du dernier message -->
                <div class="forum_lastpost lastpost">
    
                    <!-- Compteur sujets et message -->
                    <div class="forum_stats">
                        {catrow.forumrow.TOPICS}&nbsp;canons&nbsp; ▬ &nbsp;{catrow.forumrow.POSTS}&nbsp;plaies
                    </div>
                    
                    <div class="forum_lastpost_infos lastpost_infos">

                        <!-- Tire du dernier message -->
                        <!-- BEGIN switch_topic_title -->
                        <a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}"
                            class="lastpost_link">{catrow.forumrow.LATEST_TOPIC_NAME}</a><br />
                        <!-- END switch_topic_title -->
                        <span>
                            <!-- Date et auteur -->
                            {catrow.forumrow.USER_LAST_POST}
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin affichage d'un forum -->
        <!-- END forumrow -->

        <!-- BEGIN tablefoot -->
    </div>
    <!-- Fin liste des forums -->


</div>
<!-- END tablefoot -->
<!-- END catrow -->

</div>
<!-- Fin du conteneur de catégorie -->