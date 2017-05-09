<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper">
            <a href="${createLink(controller: "home", action: "index")}" class="brand-logo"><g:message code="comprafacil.label"/> </a>
            <ul class="left hide-on-med-and-down" style="margin-left: 250px;">
                <g:if test="${tipoUsuario.contains("ROLE_ADMIN")}">
                    <li><a href="${createLink(controller: "produto", action: "index")}" style="text-transform: capitalize"><g:message code="menu.item.produtos.label"/></a></li>
                </g:if>
            </ul>
            <ul class="right hide-on-med-and-down">
                <li><a href="#" style="text-transform: capitalize"><sec:loggedInUserInfo field="username" /></a></li>
                <li><a href="${createLink(controller: "user", action: "index", id: user?.id)}"><g:message code="menu.item.perfil.label"/></a></li>
                <li>
                    <g:link controller="logout" >${message(code: 'menu.item.sair.label')}<i class="material-icons right">power_settings_new</i></g:link>
                </li>
            </ul>
        </div>
    </nav>
</div>