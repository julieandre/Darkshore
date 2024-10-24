<div class="memberlist contour">

    <div class="page-title">Les victimes de l'inquisitrice</div>

    <!----------------------------------------------->
    <!-- BARRE DE SELECTION -------------->
    <div class="block-title">rechercher ou modifier l'ordre d'affichage</div>
    <div class="container">
        <div class="links_bar">
            <form action="{S_MODE_ACTION}" method="get">
                <span>
                    {L_USER_SELECT}&nbsp;<input type="text" class="inputbox tiny" name="username" maxlength="25" size="20" value="{L_USER_SELECT_VALUE}" />&nbsp;&nbsp;&nbsp;&nbsp;
                    {L_SELECT_SORT_METHOD}&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;&nbsp;&nbsp;
                    {L_ORDER}&nbsp;{S_ORDER_SELECT}&nbsp;&nbsp;&nbsp;&nbsp;
                    {S_HIDDEN_SID}
                    <input class="button2" type="submit" name="submit" value="{L_SUBMIT}" />
                </span>
            </form>
        </div>
    </div>

    <!----------------------------------------------->
    <!-- LISTE DES MEMBRES -------------->

    <div class="container">
        <!-- Liste des membres -->
        <div class="userlist">

            <!-- Affichage d'un profil -->
            <!-- BEGIN memberrow -->
            <div class="userlist_profil">

                <!-- Pseudo -->
                <span class="userlist_pseudo">
                    <a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a>
                </span>

                <!-- Avatar -->
                <div class="userlist_avatar">
                    <div class="userlist_avatar_hidden">
                        <!-- Conteneurs des informations de membre -->
                        <div class="userlist_details">
                            <!-- Champs de profil -->
                            <div class="userlist_infos">
                                <span class="field_label">{L_VISITED}</span>
                                <span class="field_content">{memberrow.LASTVISIT}</span>
                                <br /><br />
                                <span class="field_label">{L_POSTS}</span>
                                <span class="field_content">{memberrow.POSTS}</span>
                                <br /><br />
                                <span class="field_label">{L_JOINED}</span>
                                <span class="field_content">{memberrow.JOINED}</span>
                                <br /><br />
                            </div>

                            <!-- Lien de contact -->
                            <div class="userlist_contact wombat-mp">
                                {memberrow.PM_IMG}
                            </div>
                        </div>
                    </div>
                    {memberrow.AVATAR_IMG}
                </div>
            </div>
            <!-- END memberrow -->
            <!-- Fin d'un profil -->

        </div>
        <!-- Fin liste des membres -->
    
        <!-- Pagination -->
        <center>
            <!-- BEGIN switch_pagination -->
            <span class="pagination">
                {PAGINATION}
            </span>
            <!-- END switch_pagination -->
        </center>
    
    </div>
  
</div>
            