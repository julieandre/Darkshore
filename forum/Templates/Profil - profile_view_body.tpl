<!-- IMPORTANT!!-->
<!-- ACTIVATE SIMPLE PROFILE: Users & Groups › Profiles › General options › Activate advanced profile: no -->

<br/>
<div class="user_profile contour">
    <div class="profile" id="wombat">

        <!-- Username -->
        
        <div class="profile-title">
            <div class="profile-title-name">{USERNAME}</div>
            <div class="profile-title-lasttime">
                <!-- "Last visited" field -->
                <field>{LAST_VISIT_TIME}</field>
            </div>
        </div>

        <!-- Profile contents -->
        <div class="profile-content">
            <div class="profile-top">
                <div class="profile-left">
                    <div class="profile-left-top">
                        <!-- Avatar -->
                        <div class="profile-avatar" id="user_avatar">{AVATAR_IMG}</div>

                        <!-- Rank -->
                        <div class="profile-rank" id="user_rank">{POSTER_RANK}</div>

                        <!-- Status: online -->
                        <!-- BEGIN switch_show_status -->
                        <div class="profile-online">{USER_ONLINE}</div>
                        <!-- END switch_show_status -->

                        <!-- Faceclaim -->
                        <div id="user_fc"></div>
                        
                        <!-- Messages et posts -->
                        <div class="profile-spy">
                            <a rel="nofollow" href="/sta/{PUSERNAME}" id="alltopics">{L_TOPICS}</a> <!-- all topics -->
                            <a rel="nofollow" href="/spa/{PUSERNAME}" id="allposts">{L_POSTS}</a> <!-- all posts -->
                        </div>

                        <!-- Buttons contact -->
                        <div class="profile-contact">
                            
                            <!-- Contact image link -->
                            <form action="{S_PROFILE_ACTION}" method="post" name="post">
                                <!-- BEGIN contact_field -->
                                <div id="field_id{contact_field.ID}" class="profile-contact-field">{contact_field.CONTENT}</div>
                                <!-- END contact_field -->
                            </form>
                        </div>
                    </div>

                    <div id="profile-others">
                        <!-- Liens de modération -->
                        <div class="profile_admin">
                        
                            <!-- Bouton "suivre le membre" -->
                            <!-- BEGIN switch_follow_member -->
                            <button onclick="doFollowAction(this);" data-id="{CUR_USER_ID}" class="followBtn {C_CLASS} ion-android-notifications{C_ICLASS}">
                                {CUR_FOLLOW_TEXT}
                            </button>
                            <!-- END switch_follow_member -->
                        
                        &nbsp;
                        
                            <!-- Bouton d'administration du membre --> 
                            <!-- BEGIN switch_auth_user -->
                            {ADMINISTRATE_USER}{BAN_USER}
                            <!-- END switch_auth_user -->
                        
                        </div>
                    </div>

                </div>
                <div class="profile-right">
                        <div id="profile-freezone"></div>

                        <!-- Profile info -->
                        <div class="profile_infos">
                            <!-- PROFILE FIELDS -->
                                <!-- BEGIN profile_field -->
                                <div class="profile_field" id="field_id{profile_field.ID}">
                                    <!-- Label d'un champs de profil -->
                                    <span class="field_label">{profile_field.LABEL}</span>
                                
                                    <!-- Contenu d'un champs de profil -->
                                    <span class="field_content">{profile_field.CONTENT}</span>
                                </div>
                                <!-- END profile_field -->
                            <!-- End of profile fields -->
                        </div>

                        <div id="profile-irlzone"></div>

                        <div id="profile-badges"></div>
                </div>
            </div>
            <div class="profile-bottom"></div>
        </div>
    </div>
</div>




<script src="{JQUERY_ROOT}json/jquery.json-1.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        $('[id^=field_id]').each(function() {
            if ($(this).find('.field_editable').is('span, div')) {
                $(this).hover(function() {
                    if ($(this).find('.field_editable.invisible').is('span, div')) {
                        $(this).find('.field_editable').prev().addClass('ajax-profil_hover').parent().addClass('ajax-profil_parent').append('<div class="ajax-profil_edit"><img src="{AJAX_EDIT_IMG}" /></div>');
                        $(this).find('.ajax-profil_edit').attr({
                            alt: "{L_FIELD_EDIT_VALUE}",
                            title: "{L_FIELD_EDIT_VALUE}"
                        }).click(function() {
                            $(this).prev().prev().removeClass('ajax-profil_hover').addClass('invisible').next().removeClass('invisible').append('<img src="{AJAX_VALID_IMG}" class="ajax-profil_valid" />').find('input,select');
                            $(this).prev().find('.ajax-profil_valid').attr({
                                alt: "{L_VALIDATE}",
                                title: "{L_VALIDATE}"
                            }).click(function() {
                                var content = new Array();
                                $(this).parent().find('[name]').each(function() {
                                    var type_special = $(this).is('input[type=radio],input[type=checkbox]');
                                    if ((type_special && $(this).is(':checked')) || !type_special) {
                                        content.push(new Array($(this).attr('name'), $(this).attr('value')));
                                    }
                                });
                                var id_name = $(this).parents('[id^=field_id]').attr('id');
                                var id = id_name.substring(8, id_name.length);
                                $.post(
                                    "{U_AJAX_PROFILE}", {
                                        id: id,
                                        user: "{CUR_USER_ID}",
                                        active: "{CUR_USER_ACTIVE}",
                                        content: $.toJSON(content),
                                        tid: "{TID}"
                                    },
                                    function(data) {
                                        $.each(data, function(i, item) {
                                            $('[id=field_id' + i + ']').find('.field_uneditable').html(item).end().find('.ajax-profil_valid').remove().end().find('.field_editable').addClass('invisible').end().find('.field_uneditable').removeClass('invisible');
                                        });
                                    },
                                    "json"
                                );
                            });
                            $(this).remove();
                        });
                    }
                }, function() {
                    if ($(this).find('.field_editable.invisible').is('span, div')) {
                        $(this).find('.field_editable').prev().removeClass('ajax-profil_hover');
                        $(this).find('.ajax-profil_edit').remove();
                    }
                });
            }
        });
    });
    //]]>
</script>
            
