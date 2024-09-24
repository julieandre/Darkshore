<!----------------------------------------------->
<!-- LISTE DES SUJETS -------------->
<!-- BEGIN topics_list_box -->

<!----------------------------------------------->
<!-- AFFICHAGE D'UN SUJET -------------->
<!-- BEGIN row -->
<!-- BEGIN topic -->

<!-- BEGIN line_sticky -->
<div class="topic_separator"></div> <!-- Ligne qui séparent les annonces et les notes des autres sujets (à activer dans "message > configuration") -->
<!-- END line_sticky -->

<!-- Conteneur d'un sujet -->
<div class="topicslist_row row {topics_list_box.row.FOLDER_CLASSNAME} {topics_list_box.row.TOPIC_READ_STATUS}">

    <!-- Sélection d'un sujet (utile uniquement durant la modération des sujets, permet de les sélectionner)-->
    <!-- BEGIN single_selection -->
    <input type="radio" name="{topics_list_box.FIELDNAME}" value="{topics_list_box.row.FID}" {topics_list_box.row.L_SELECT} />
    <!-- END single_selection -->

    <!-- Image d'un sujet -->
    <div class="topicslist-img"></div>

    <!-- Icone de message -->
    <span class="topic_msgicon"></span>

    <div class="topicslist_infos" {topics_list_box.row.ICON}>
        <div class="topicslist_infos_top">
            <div class="topicslist_infos_title">
                <!-- Titre du sujet -->
                <a class="topictitle" href="{topics_list_box.row.U_VIEW_TOPIC}">{topics_list_box.row.TOPIC_TITLE}</a>
            </div>

            <div class="topic-author">
                {topics_list_box.row.L_BY}&nbsp;
                <!-- Indication "par" -->
                {topics_list_box.row.TOPIC_AUTHOR}
                <!-- Auteur -->
            </div>
        </div>

        <div class="topicslist_infos_bottom">

            <div class="topicslist_infos_bottom_hidden">
                <!-- Description du sujet -->
                <div class="topicslist-description">
                <!-- BEGIN switch_description -->
                    {topics_list_box.row.topic.switch_description.TOPIC_DESCRIPTION}
                <!-- END switch_description -->
                </div>
        
                <!-- Pagination du sujet -->
                <span class="topicslist-pagination">
                    {topics_list_box.row.GOTO_PAGE_NEW}
                    <!-- BEGIN nav_tree -->
                    {topics_list_box.row.TOPIC_NAV_TREE_NEW}
                    <!-- END nav_tree -->
                </span>
            </div>
            <div class="topicslist_infos_stats">
                <!-- Label type de sujet : annonce, note, ... -->
                <span class="topic-type">{topics_list_box.row.TOPIC_TYPE}</span>

                <!-- Statistiques -->
                <div class="topicslist-stats">
                    <!-- Nombres // Indication "messages" — Nombres // Indication "vues" -->
                    {topics_list_box.row.REPLIES} {L_REPLIES} — {topics_list_box.row.VIEWS} {L_VIEWS}
                </div>
            </div>
        </div>
    </div>

    <!-- Dernier message -->
    <div class="topicslist-lastpost lastpost">
        <!-- Icon vous avez posté dans ce sujet -->
        <div class="topicslist-youposthere">
            {topics_list_box.row.PARTICIPATE_POST_IMG}
        </div>

        <div class="topicslist-lastpost-infos">
            <!-- Date du dernier message -->
            {topics_list_box.row.LAST_POST_TIME}
            <br />
            <!-- Auteur du dernier message -->
            {topics_list_box.row.LAST_POST_AUTHOR}&nbsp;
            <!-- Image-lien pour aller au dernier message -->
            {topics_list_box.row.LAST_POST_IMG}
        </div>

        <!-- Avatar du dernier posteur-->
        <div class="topicslist-avatar-lastpost lastpostavatar">
            <!-- BEGIN avatar -->
            {topics_list_box.row.topic.avatar.LAST_POST_AVATAR}
            <!-- END avatar -->
        </div>
    </div>
</div>
<!-- END topic -->
<!-- END row -->

<!-- Fin du conteneur d'un sujet -->

<!-- Indication "pas de sujet" -->
<!-- BEGIN no_topics -->
<center><strong>{topics_list_box.row.L_NO_TOPICS}</strong></center>
<!-- END no_topics -->


<!-- END topics_list_box -->
<!-- Fin de la liste des sujets -->


<!-- BEGIN multi_selection -->
<script type="text/javascript">
    function check_uncheck_main_ {
        topics_list_box.row.header_table.BOX_ID
    }() {
        alert('MAIN');

        var all_checked = true;

        for (i = 0;
            (i < document. {
                topics_list_box.FORMNAME
            }.elements.length) && all_checked; i++) {
            if (document. {
                    topics_list_box.FORMNAME
                }.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}') {
                all_checked = document. {
                    topics_list_box.FORMNAME
                }.elements[i].checked;
            }
        }

        document. {
            topics_list_box.FORMNAME
        }.all_mark_ {
            topics_list_box.row.header_table.BOX_ID
        }.checked = all_checked;
    }

    function check_uncheck_all_ {
        topics_list_box.row.header_table.BOX_ID
    }() {
        alert('ALL');

        for (i = 0; i < document. {
                topics_list_box.FORMNAME
            }.length; i++) {
            if (document. {
                    topics_list_box.FORMNAME
                }.elements[i].name == '{topics_list_box.FIELDNAME}[]{topics_list_box.row.header_table.BOX_ID}') {
                document. {
                    topics_list_box.FORMNAME
                }.elements[i].checked = document. {
                    topics_list_box.FORMNAME
                }.all_mark_ {
                    topics_list_box.row.header_table.BOX_ID
                }.checked;
            }
        }
    }

</script>
<!-- END multi_selection -->
            