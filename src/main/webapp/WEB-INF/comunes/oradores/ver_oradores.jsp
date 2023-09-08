<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:include page="../cabezahtml.jsp">
    <jsp:param name="titulo" value="Tabla de Oradores" />
</jsp:include>


<body data-bs-target=".navbar" data-bs-offset="0">
<nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark ps-5 pb-3 sticky-top" data-bs-theme="dark">
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
  <section class="container table-responsive">
    <h1 class="text-center">Lista de oradores</h1>
    <table class="table text-center border table-border table-responsive table-hover margin-tablas-oradores">
        <thead>
            <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Fecha de alta</th>
                <th scope="col">Editar</th>
                <th scope="col">Eliminar</th>
            </tr>
        </thead>
      <tbody>
        <jsp:include page="oradoresTablas.jsp"/>
      </tbody>
    </table>
  </section>

<!--  <%@ include file="../footer.html" %>-->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
    crossorigin="anonymous"></script>
</body>
</html>