<g:render template="/layouts/msg"/>
${flash}
<form onsubmit="save('${createLink(controller: 'produto', action: 'save')}', this)" method="POST">
    <div class="row nopad" style="border-bottom: 1px solid #ccc;">
        <div class="col s6">
            <h1>
                <g:message code="default.novo.label"/> <span >|</span> <g:message code="produto.label"/>
            </h1>
        </div>
        <div class="col s6 center" style="margin-top: 51px">
            <a style="" class="waves-effect waves-light btn orange lighten-2" href="${createLink(controller: 'produto', action: 'index')}"><g:message code="default.voltar.label"/></a>
            <button style="" class="btn waves-effect waves-light green accent-3" type="submit" name="submit">
                <g:message code="default.save.label"/>
                <i class="fa fa-check"></i>
            </button>
        </div>
    </div>
    <div class="row nopad">
        <div class="input-field col s3">
            <input id="nome" name="nome" type="text" >
            <label for="nome"><g:message code="produto.nome.label"/> </label>
        </div>
        <div class="input-field col s3">
            <input id="codigo" name="codigo" type="text" >
            <label for="nome"><g:message code="produto.codigo.label"/> </label>
        </div>
        <div class="input-field col s3">
            <input id="descricao" name="descricao" type="text" >
            <label for="descricao"><g:message code="produto.descricao.label"/> </label>
        </div>
        <div class="input-field col s3">
            <select name="fabricante" id="fabricante" class="icons">
                <option value="" disabled selected><g:message code="default.selecione.label"/></option>
                <g:each in="${fabricantes}" var="fabricante">
                    <option value="${fabricante?.id}" data-icon="images/sample-1.jpg" class="circle">${fabricante?.nome}</option>
                </g:each>
            </select>
            <label><g:message code="produto.fabricante.label"/> </label>
        </div>
    </div>
</form>

