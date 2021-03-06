<div class="tags row">

	<div class="col-lg-9">
		<div class="panel panel-default tag-management">
			<div class="panel-body">
				<!-- IF !tags.length -->
				Your forum does not have any topics with tags yet.
				<!-- ENDIF !tags.length -->

				<div class="tag-list">
					<!-- BEGIN tags -->
					<div class="tag-row" data-tag="{tags.value}">
						<div data-value="{tags.value}">
							<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span><span class="tag-topic-count"><a href="{config.relative_path}/tags/{tags.value}" target="_blank">{tags.score}</a></span>
						</div>
						<div class="tag-modal hidden">
							<div class="form-group">
								<label for="bgColor">Background Colour</label>
								<input id="bgColor" placeholder="#ffffff" data-name="bgColor" value="{tags.bgColor}" class="form-control category_bgColor" />
							</div>
							<div class="form-group">
								<label for="color">Text Colour</label>
								<input id="color" placeholder="#a2a2a2" data-name="color" value="{tags.color}" class="form-control category_color" />
							</div>
						</div>
					</div>
					<!-- END tags -->
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 acp-sidebar">
		<div class="panel panel-default">
			<div class="panel-heading">Create & Modify Tags</div>
			<div class="panel-body">
				<p>Select tags via clicking and/or dragging, use shift to select multiple.</p>
				<button class="btn btn-primary btn-block" id="create">Create Tag</button>
				<button class="btn btn-primary btn-block" id="modify">Modify Tags</button>
				<button class="btn btn-warning btn-block" id="deleteSelected">Delete Tags</button>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<input class="form-control" type="text" id="tag-search" placeholder="Search for tags..."/><br/>
				Click <a href="{config.relative_path}/admin/settings/tags">here</a> to visit the tag settings page.
			</div>
		</div>
	</div>

	<div class="modal fade" id="create-modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Create Tag</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="create-tag-name">Tag Name</label>
							<input type="text" class="form-control" id="create-tag-name" placeholder="Tag Name" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="create-modal-go">Create</button>
				</div>
			</div>
		</div>
	</div>

</div>
