<h1 class="page-title">{L_SEARCH_MATCHES}</h1>
<div class="container">

    <form action="{S_ACTION}" method="post" name="post" onsubmit="return verify_select();">

	<!-- BEGIN searchresults -->	
        <div class="topicslist_row">
            
            <!-- Image d'un sujet -->
            <div class="topicslist-img"></div>

            <!-- Icone de message -->
            <span class="topic_msgicon"></span>

            <div class="topicslist_infos" {searchresults.ICON}>
                <div class="topicslist_infos_top">
                    <div class="topicslist_infos_title">
                        <!-- Icon vous avez posté dans ce sujet -->
                        <div class="topicslist-youposthere">
                            {searchresults.PARTICIPATE_POST_IMG}
                        </div>
                        
                        <!-- Titre du sujet -->
                        <a class="topictitle" href="{searchresults.U_VIEW_TOPIC}">{searchresults.TOPIC_TITLE}</a>
                    </div>

                    <div class="topic-author">
                        {searchresults.L_BY}&nbsp;
                        <!-- Indication "par" -->
                        {searchresults.TOPIC_AUTHOR} 
                        <!-- Auteur -->
                    </div>
                </div>

                <div class="topicslist_infos_bottom">

                    <div class="topicslist_infos_bottom_hidden">
                        <!-- Description du sujet -->
                        <div class="topicslist-description">
                            {searchresults.L_IN} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_NAME}</a>
                        </div>
                
                        <!-- Pagination du sujet -->
                        <span class="topicslist-pagination">
                            {searchresults.GOTO_PAGE_NEW}
                            <!-- BEGIN nav_tree -->
                            {searchresults.TOPIC_NAV_TREE_NEW}
                            <!-- END nav_tree -->
                        </span>
                    </div>

                    <div class="topicslist_infos_stats">
                        <!-- Label type de sujet : annonce, note, ... -->
                        <span class="topic-type">{searchresults.TOPIC_TYPE}</span>

                        <!-- Statistiques -->
                        <div class="topicslist-stats">
                            <!-- Nombres // Indication "messages" — Nombres // Indication "vues" -->
                            {searchresults.REPLIES} {L_REPLIES} ▬ {searchresults.VIEWS} {L_VIEWS}
                        </div>
                    </div>
                </div>
            </div>

            <!-- Dernier message -->
            <div class="topicslist-lastpost lastpost">
                <div class="topicslist-lastpost-infos">
                    <!-- Date du dernier message -->
                    {searchresults.LAST_POST_TIME}
                    <br />
                    <!-- Auteur du dernier message -->
                    {searchresults.LAST_POST_AUTHOR}&nbsp;
                    <!-- Image-lien pour aller au dernier message -->
                    {searchresults.LAST_POST_IMG}
                </div>

                <!-- Avatar du dernier posteur-->
                <div class="topicslist-avatar-lastpost lastpostavatar">
                    <!-- BEGIN avatar -->
                    {searchresults.topic.avatar.LAST_POST_AVATAR}
                    <!-- END avatar -->
                </div>
            </div>
        </div>
	 <!-- END searchresults -->
      
        <p class="pagination">{PAGINATION}</p>
    </form>

</div>
