
<br/>
<div class="container post_history">
    <!-- Titre "revue du sujet" -->
    <!-- BEGIN switch_inline_mode -->
    <div class="h3">{L_TOPIC_REVIEW}</div>
    <!-- END switch_inline_mode -->

    <!-- Affichage d'un message simplifié -->
    <!-- BEGIN postrow -->
    <!-- BEGIN displayed -->
    <a name="{postrow.displayed.POST_ID}"></a>
    <div class="{postrow.displayed.displayed.ROW_CLASS}">

        <!-- Contenu -->
        <div class="postbody">
            <!-- Sujet par - Auteur - le - date -->
            <span class="postreview_detail"> {postrow.displayed.L_TOPIC_BY} {postrow.displayed.POSTER_NAME} {postrow.displayed.L_TOPIC_ON} {postrow.displayed.POST_DATE}</span>

            <!-- Message -->
            <div class="content">{postrow.displayed.MESSAGE}</div>
        </div>

        <div class="clear"></div>
    </div>
    <!-- END displayed -->
    <!-- BEGIN hidden -->
    <div class="post">
        <p style="text-align:center">{postrow.hidden.MESSAGE}</p>
    </div>
    <!-- END hidden -->
    <!-- END postrow -->
    <!-- Fin de l'affichage -->

</div>
            