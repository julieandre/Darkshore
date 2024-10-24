<!-- BEGIN switch_user_logged_in --><p class="right rightside">{LAST_VISIT_DATE}</p><!-- END switch_user_logged_in -->
<p>{CURRENT_TIME}</p>

<h1 class="page-title solo">{L_USERGROUPS}</h1>
<!-- BEGIN switch_groups_joined -->
	<!-- BEGIN switch_groups_member -->
	<div class="block-title">{L_GROUP_MEMBERSHIP_DETAILS}</div>
	<div class="container">
		<fieldset>
			<dl>
				<dt><label>{L_YOU_BELONG_GROUPS}</label></dt>
				<dd>{GROUP_MEMBER_SELECT_NEW}</dd>
			</dl>
		</fieldset>
	</div>
	<br/>
	<!-- END switch_groups_member -->

	<!-- BEGIN switch_groups_pending -->
	<div class="block-title">Groupes en attente</div>
	<div class="container">
		<fieldset>
			<dl>
				<dt><label>{L_PENDING_GROUPS}</label></dt>
				<dd>{GROUP_PENDING_SELECT_NEW}</dd>
			</dl>
		</fieldset>
	</div>
	<br/>
	<!-- END switch_groups_pending -->
<!-- END switch_groups_joined -->

<!-- BEGIN switch_groups_remaining -->
<div class="block-title">{L_JOIN_A_GROUP}</div>
<div class="container">
	<form action="{U_USERGROUP_ACTION}" method="get">
	<fieldset>
		<dl>
			<dt><label>{L_SELECT_A_GROUP}</label></dt>
			<dd>{GROUP_LIST_SELECT}&nbsp;<input class="button2" type="submit" value="{L_VIEW_INFORMATION}" />{S_HIDDEN_FIELDS}</dd>
		</dl>
	</fieldset>
	</form>
</div>
<br/>
<!-- END switch_groups_remaining -->

<!-- BEGIN switch_display_groups_all -->
	<div class="block-title">{switch_display_groups_all.L_ALL_GROUPS}</div>
	<div class="container">
		<fieldset>
			<dl>
				<dt><label>{switch_display_groups_all.L_LIST_ALL_GROUPS}</label></dt>
				<dd>
					<ul class="group_list noList">
						<!-- BEGIN group_details -->
						<li>
							<a href="{switch_display_groups_all.group_details.U_GROUP}" {switch_display_groups_all.group_details.GROUP_STYLE}>{switch_display_groups_all.group_details.GROUP_NAME}</a><div>{switch_display_groups_all.group_details.GROUP_STATUS} {switch_display_groups_all.group_details.NB_GROUP_MEMBERS} </div>
							<hr>
						</li>
						<!-- END group_details -->
					</ul>
				</dd>
			</dl>
		</fieldset>
	</div>
<!-- END switch_display_groups_all -->