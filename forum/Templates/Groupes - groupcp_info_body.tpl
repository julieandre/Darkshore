<!-- BEGIN switch_user_logged_in --><p class="right rightside">{LAST_VISIT_DATE}</p><!-- END switch_user_logged_in -->
<p>{CURRENT_TIME}</p>

<h1 class="page-title">{GROUP_NAME}</h1>

<div id="wombat">
	<div class="block-title {GROUP_NAME}">
		{GROUP_NAME}
		<!-- BEGIN switch_count_users_group -->
			&nbsp;( {switch_count_users_group.GROUP_COUNT} membres )
		<!-- END switch_count_users_group -->
	</div>
	<div class="container">
		<div class="group_desc">{GROUP_DESC}</div>
	</div>
</div>
<br/>

<form action="{S_GROUPCP_ACTION}" method="post" name="post">
	<div class="block-title">Membres du groupe</div>
	<div class="forumbg forumbg-table container">
		<div class="inner">
			<table class="table1" cellspacing="1">
			<tbody>
				<tr class="row-subtitle">
					<td colspan="8">{L_GROUP_MODERATOR}</td>
				</tr>
				<tr class="row-group">
					<!-- BEGIN switch_mod_option --><td class="posts"></td><!-- END switch_mod_option -->
					<td>
						<div class="row-member-info">
							<a href="{U_MOD_VIEWPROFILE}">{MOD_USERNAME}</a>
							<div class="memberlist-info"><b>{L_POSTS}:</b> {MOD_POSTS}</div>
							<div class="memberlist-info"><b>{L_FROM}:</b> {MOD_FROM}</div>
							<!-- BEGIN switch_anonymous_auth -->
							<div class="memberlist-info"><b>{L_EMAIL}:</b> {MOD_EMAIL_IMG}</div>
							<!-- END switch_anonymous_auth -->
						</div>
					</td>
				</tr>
				<tr class="row-subtitle">
					<td colspan="8">{L_GROUP_MEMBERS}</td>
				</tr>
				<!-- BEGIN member_row -->
				<tr class="row-group">
					<!-- BEGIN switch_mod_option --><td class="posts"><input type="checkbox" name="members[]" value="{member_row.USER_ID}" /></td><!-- END switch_mod_option -->
					<td>
						<div class="row-member-info">
							<a href="{member_row.U_VIEWPROFILE}">{member_row.USERNAME}</a>
							<div class="memberlist-info"><b>{L_POSTS}:</b> {memberrow.POSTS}</div>
							<div class="memberlist-info"><b>{L_FROM}:</b> {memberrow.INTERESTS}</div>
							<!-- BEGIN switch_anonymous_auth -->
							<div class="memberlist-info"><b>{L_EMAIL}:</b> {memberrow.EMAIL_IMG}</div>
							<!-- END switch_anonymous_auth -->
						</div>
					</td>
				</tr>
				<!-- END member_row -->
				<!-- BEGIN switch_no_members -->
				<tr class="row-group">
					<td colspan="2"><p class="center">{L_NO_MEMBERS}</p></td>
				</tr>
				<!-- END switch_no_members -->
				<!-- BEGIN switch_hidden_group -->
				<tr class="row-group">
					<td colspan="2"><p class="center">{L_HIDDEN_MEMBERS}</p></td>
				</tr>
				<!-- END switch_hidden_group -->
			</tbody>
			</table>
		</div>
		<p class="pagination">{PAGINATION}</p>
	</div>
	<!-- BEGIN switch_mod_option -->
		<div class="container">
			<div class="inner">
				<!-- BEGIN switch_grp_admin -->
				<p class="row1" style="padding: 5px 0px;"><strong>{L_ADMIN_GRP_EXPLAIN}</strong></p>
				<!-- END switch_grp_admin -->
				<p class="left-box">
					<input class="inputbox tiny" type="text" id="username" name="username" />&nbsp;
					&nbsp;<input class="button2" type="submit" name="add" value="{L_ADD_MEMBER}" />&nbsp;
					&nbsp;<input class="button2" type="button" id="find_user" value="{L_FIND_USERNAME}" />
				</p>
				<p class="right-box"><input class="button2" type="submit" name="remove" value="{L_REMOVE_SELECTED}" />{S_HIDDEN_FIELDS}</p>
			</div>
		</div>
	<!-- END switch_mod_option -->
	{PENDING_USER_BOX}
</form>

<br/>
<div class="block-title">{L_GROUP_INFORMATION}</div>
<div class="container">
	<form action="{S_GROUPCP_ACTION}" method="post">
	<fieldset>
		<dl>
			<dt><label>{L_GROUP_MEMBERSHIP}:</label></dt>
			<dd>{GROUP_DETAILS}&nbsp;
				<!-- BEGIN switch_subscribe_group_input -->
				<input class="button2" type="submit" name="joingroup" value="{L_JOIN_GROUP}" />
				<!-- END switch_subscribe_group_input -->
				<!-- BEGIN switch_unsubscribe_group_input -->
				<input class="button2" type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" />
				<!-- END switch_unsubscribe_group_input -->
			</dd>
		</dl>
		<!-- BEGIN switch_mod_option -->
		<dl>
			<dt><label>{L_GROUP_TYPE}:</label></dt>
			<dd>
				<label><input type="radio" name="group_type" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} {S_GROUP_OPEN_DISABLED} />{L_GROUP_OPEN}</label>
				<label><input type="radio" name="group_type" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} />&nbsp;{L_GROUP_CLOSED}</label>
				<label><input type="radio" name="group_type" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} />&nbsp;{L_GROUP_HIDDEN}</label>
				<label>&nbsp;&nbsp;<input class="button2" type="submit" name="groupstatus" value="{L_UPDATE}" /></label>
			</dd>
		</dl>
		<!-- END switch_mod_option -->
		{S_HIDDEN_FIELDS}
	</fieldset>
	</form>
</div>

<!-- BEGIN switch_mod_option -->
<div id="find_username" class="jqmWindow"></div>

<script src="{JQUERY_DIR}jqmodal/jqmodal.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
	$(document).ready(function(){
		function find_username(fieldname) {
			$.get('{U_SEARCH_USER}&fieldname=' + fieldname + '&time=' + timestamp(), '',
				function(data){
					$('#find_username').html(data).jqmShow();
					$('.jqmOverlay').bgiframe();
					$('#find_username').bgiframe();
				});
			return false;
		}
		$('#find_user').click(function(){
			return find_username('username');
		});
		$('#find_username').jqm({toTop: true});
	});
//]]>
</script>
<!-- END switch_mod_option -->