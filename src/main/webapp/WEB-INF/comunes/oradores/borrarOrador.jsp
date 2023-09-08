<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../cabezahtml.jsp">
    <jsp:param name="titulo" value="Borrar Orador"/>
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

    <section class="container-fluid tamaño-form-oradores mt-3">
        <div class="text-center">
            <h1>Borrar Orador</h1>
        </div>
        <div>
             <form action="${pageContext.request.contextPath}/ver_oradores?accion=borrar&id=${oradorABorrar.id}"
                   method="post" class="was-validated">
                 <div class="modal-body">
                     <p class="text-center fs-2">¿Estás Seguro/a de que quieres borrar a ${oradorABorrar.nombre} ${oradorABorrar.apellido}?</p>
                 </div>
                 <div class="d-grid gap-2 d-md-block text-center">
                     <a href="${pageContext.request.contextPath}/ver_oradores" type="button" class="btn btn-outline-secondary btn-lg">Mejor no</a>
                     <button type="submit" class="btn btn-danger btn-lg">Sí, seguro</button>
                 </div>
             </form>
        </div>
    </section>
</body>