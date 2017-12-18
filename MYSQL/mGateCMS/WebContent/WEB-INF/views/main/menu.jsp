<div class="menu-panel">
	<div class="menu-head">
		<span>HOME</span>
	</div>
	<div class="menu-content">
		<c:forEach var="menu" items="${sessionScope.userMenusList }" >
			<ul class="menu-list">
				<li class="p-menu">${menu.menuName }</li>
				<li>
					<ul class="child-menu">
						<c:forEach var="childMenu" items="${menu.childMenus}">
							<li><a class="child-p-menu" href="javascript:void(0)">${childMenu.menuName}</a></li>
							<li style="display: none">
								<ul class="son-menu">
									<c:forEach var="sonMenu" items="${childMenu.childMenus}">
										<li><a class="" href="${ctx}${sonMenu.menuUrl}">${sonMenu.menuName}</a></li>
									</c:forEach>
								</ul>
							</li>
						</c:forEach>
					</ul>
				</li>
			</ul>
		</c:forEach>
		<%-- <ul class="menu-list">
			<li class="p-menu">Management</li>
			<li>
				<ul class="child-menu">
					<li><a class="" href="${ctx}/role/list.do">Basic
							management</a></li>
					<li><a href="#">Business manegement</a></li>
					<li><a href="#">System manegement</a></li>
				</ul>
			</li>
		</ul> 

		<ul class="menu-list">
			<li class="p-menu">Settings</li>
			<li>
				<ul class="child-menu">
					<li><a href="#">Logging management</a></li>
					<li><a href="#">Day-end Processing</a></li>
				</ul>
			</li>
		</ul>
		--%>
	</div>
</div>