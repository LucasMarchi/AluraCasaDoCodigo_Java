<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <title>${produto.titulo} - Casa do Código</title>
    </head>
    <body class="produto">
        <main>
            <header id="layout-header">
                <div class="clearfix container">
                    <a href="/" id="logo">
                    </a>
                    <div id="header-content">
                        <nav id="main-nav">
                            <ul class="clearfix">
                                <li><a href="/cart" rel="nofollow">Carrinho (${carrinhoCompras.quantidade}) </a></li>
                                <li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre Nós</a></li>
                                <li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas Frequentes</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>

            <article id="${produto.ID}">
                <header id="product-highlight" class="clearfix">
                    <div id="product-overview" class="container">
                        <h1 class="product-title" itemprop="name">
                            ${produto.titulo} 
                        </h1>
                        <p class="product-author">
                            <span class="product-author-link">

                            </span>
                        </p>

                        <p itemprop="description" class="book-description">${produto.descricao }</p>

                    </div>
                </header>

                <form action='<c:url value="/carrinho/add"/>' method="post" class="container">
                    <ul id="variants" class="clearfix">
                        <input type="hidden" name="produtoID" value="${produto.ID}" />
                        <c:forEach items="${produto.precos}" var="preco">
                            <li class="buy-option">
                                <input type="radio" name="tipo" class="variant-radio" id="tipo" value="${preco.tipo}"  checked="checked"  />
                                <label  class="variant-label">
                                    ${preco.tipo} 
                                </label>
                                <p class="variant-price">${preco.valor}</p>
                            </li>
                        </c:forEach>          
                    </ul>
                    <button type="submit" class="submit-image icon-basket-alt" alt="Compre Agora" title="Compre Agora${produto.titulo}"></button>
                </form>
                <section class="data product-detail">
                    <h2 class="section-title">Dados do livro:</h2>
                    <p>Número de páginas: <span>${produto.paginas}</span></p>
                    <p></p>
                    <fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time}"/>
                </section>
            </article>
        </main>
    </body>
</html>
