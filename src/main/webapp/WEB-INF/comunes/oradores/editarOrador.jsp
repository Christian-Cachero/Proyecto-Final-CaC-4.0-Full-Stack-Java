<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../cabezahtml.jsp">
    <jsp:param name="titulo" value="Editar Orador"/>
</jsp:include>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="0">

<nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark ps-5 pb-3 sticky" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
            <!--Recordar agregar los "./" o "../" a los links nesesarios antes de desplegar.-->
            <img src="img/codoacodo.png" alt="Logo" width="100rem" class="d-inline-block">
            Conf Bs As</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end sticky-top pe-5" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp#conferencia">La conferencia</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp#LyF">El lugar y la fecha</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp#convierteteOrador">Conviértete en orador</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link color-verde-tickets" href="compra_ticket.jsp">Comprar tickets</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

    <section class="container-fluid tamaño-form-oradores mt-5">
        <div class="text-center">
            <h1>Editar Oradores</h1>
        </div>

        <form action="${pageContext.request.contextPath}/ver_oradores?accion=actualizar&id=${fn:escapeXml(oradorAEditar.id)}"
              method="post" class="was-validated">
            <div>
                <div class="row">
                    <div class="mb-3 text-start">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" required
                            value="${fn:escapeXml(oradorAEditar.nombre)}">
                    </div>
                    <div class="mb-3 text-start">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" required
                            value="${fn:escapeXml(oradorAEditar.apellido)}">
                    </div>
                </div>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/ver_oradores" type="button" class="btn btn-outline-secondary"
                    data-bs-dismiss="modal">Volver a atrás</a>
                <button type="submit" class="btn btn-secondary">Guardar</button>
            </div>
        </form>
    </section>
</body>