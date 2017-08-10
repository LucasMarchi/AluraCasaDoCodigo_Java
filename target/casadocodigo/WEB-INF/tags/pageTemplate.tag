<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>
<%@ attribute name="extraScripts" fragment="true"%>

<title>${titulo} - Casa do Código</title>

<body class="produto">

	<%@ include file="/WEB-INF/views/cabecalho.jsp" %>
	<jsp:doBody />
	<jsp:invoke fragment="extraScripts"></jsp:invoke>
	<%@ include file="/WEB-INF/views/rodape.jsp"%>

</body>
</html>
