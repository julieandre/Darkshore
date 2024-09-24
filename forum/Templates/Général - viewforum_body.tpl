<!----------------------------------------------->
<!-- LIEN DE NAVIGATION -------------->

<div class="navigation_links">
    <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
    <span class="navigation_chain">
        <a href="{U_INDEX}">Remnant Dawn</a> {NAV_CAT_DESC}
    </span>
</div>

<!-- Affichage des sous forums (template : index_box) -->
{BOARD_INDEX}

<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="manage_forum">
    <div class="manage_forum_buttons">
        <!-- Boutons : nouveau, répondre, verrouillé -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow"><img class="newtopic_button"
                src="{POST_IMG}" class="{POST_IMG_ID}" alt="{L_POST_NEW_TOPIC}" /></a>
        <!-- END switch_user_authpost -->
    </div>
    <div class="manage_forum_pagination">
        <!-- Pagination -->
        <span class="pagination page-topic">
            {PAGINATION}
        </span>
    </div>
</div>

<!----------------------------------------------->
<!-- LISTE DES SUJETS -------------->
<!--(template: topics_list_box) -->
{TOPICS_LIST_BOX}

<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="manage_forum">
    <div class="manage_forum_buttons">
        <!-- Boutons : nouveau, répondre, verrouillé -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" accesskey="n" rel="nofollow"><img class="newtopic_button"
                src="{POST_IMG}" class="{POST_IMG_ID}" alt="{L_POST_NEW_TOPIC}" /></a>
        <!-- END switch_user_authpost -->
    </div>
    <div class="manage_forum_pagination">
        <!-- Pagination -->
        <span class="pagination page-topic">
            {PAGINATION}
        </span>
    </div>
</div>

<!----------------------------------------------->
<!-- LIEN DE NAVIGATION -------------->

<div class="navigation_links">
    <!-- Chaîne de lien : Catégorie > Forum > Sous-fo -->
    <span class="navigation_chain">
        <a href="{U_INDEX}">Remnant Dawn</a> {NAV_CAT_DESC}
    </span>
</div>




<!-- Bouton pour trier les sujets -->
<!-- BEGIN switch_sort_options -->
<div id="sort-topics" class="button right">

    <span id="sort-btn"><i class="bi bi-filter"></i> Trier les sujets</span>

    <form method="post" class="sort-form">

        <h3>{switch_sort_options.L_SORT_BY}</h3>
        <select name="sort_method">{switch_sort_options.S_OPTIONS}</select>

        <br /><br />

        <h3>{switch_sort_options.L_ORDER}</h3>
        <label><input type="radio" name="sort_order" id="sort_order_d" value="0" {switch_sort_options.DESC_CHECKED} />
            {switch_sort_options.L_DESC}</label>
        <label><input type="radio" name="sort_order" id="sort_order_a" value="1" {switch_sort_options.ASC_CHECKED} />
            {switch_sort_options.L_ASC}</label>

        <br /><br />
        <input class="right" type="submit" value="{switch_sort_options.L_SORT}">
    </form>
</div>
<!-- END switch_sort_options -->

<!----------------------------------------------->
<!-- SAUTER VERS UN FORUM -------------->

<div class="right">
    <form action="{S_JUMPBOX_ACTION}" method="get" name="jumpbox"
        onsubmit="if(document.jumpbox.f.value == -1){return false;}">
        <fieldset class="vf_jumpbox">
            <label>{L_JUMP_TO}:</label><br />
            {S_JUMPBOX_SELECT} &nbsp;
            <input class="button2" type="submit" value="{L_GO}" />
        </fieldset>
    </form>
</div>


<!----------------------------------------------->
<!-- LIENS UTILES -------------->


<!-- Lien Surveiller ce forum -->
<!-- BEGIN switch_user_logged_in -->
<span class="right">
    {S_WATCH_FORUM}
</span>
<!-- END switch_user_logged_in -->

<a href="{U_EGOSEARCH_JS_PLUS_MENU}">Voir ses messages</a><br />
<a href="{U_NEWPOSTS_JS_PLUS_MENU}">Nouveaux messages depuis la dernière visite</a><br />
<a href="{U_UNANSWERED_JS_PLUS_MENU}">Messages sans réponses</a>

<br /><br />

<!----------------------------------------------->
<!-- OUTILS DE MODERATION ------------>
<div id="moderation_forum_tools">
    {S_AUTH_LIST}
</div>

<!-- Changement de texte du lien "modérer ce forum" -->
<script type="text/javascript">
    document.getElementById('moderation_forum_tools').innerHTML = document.getElementById('moderation_forum_tools')
        .innerHTML.replace(/modérer ce forum/, "Modérer les sujets du forum");
</script>

<br />
<div class="clear"></div>



<!-- BEGIN switch_sort_options -->
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function () {
        var sort_btn = $('#sort-btn');
        sort_btn.on('click', function () {
            sort_btn.toggleClass('expanded');
        });

        document.onclick = function (e) {
            if ($(e.target).parents('#sort-topics').length == 0) {
                document.getElementById('sort-btn').classList.remove('expanded');
            }
        };
    });
    //]]>
</script>
<!-- END switch_sort_options -->