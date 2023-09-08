<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="WEB-INF/comunes/cabezahtml.jsp">
    <jsp:param name="titulo" value="comprar ticket"/>
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
          <li class="nav-item">
            <a class="nav-link active-link" href="ver_oradores">Ver Oradores</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <section class="d-flex justify-content-center mt-4">
        <div class="row">
            <div class="col-sm-12 col-lg-4 gx-2">
                <div class="card border-primary tamaño-cards text-center">
                    <div class="card-body ">
                    <h5 class="card-title mb-4">Estudiante</h5>
                    <h6 class="card-subtitle mb-4">Tiene un descuento</h6>
                    <p class="card-text mb-5">80%</p>
                    <h6 class="card-subtitle mb-4 text-muted">* presentar documentación</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-lg-4 gx-2">
                <div class="card border-success tamaño-cards text-center">
                    <div class="card-body">
                    <h5 class="card-title mb-4">Trainee</h5>
                    <h6 class="card-subtitle mb-4">Tiene un descuento</h6>
                    <p class="card-text mb-5">50%</p>
                    <h6 class="card-subtitle mb-4 text-muted">* presentar documentación</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-lg-4 gx-2">
                <div class="card border-warning tamaño-cards text-center">
                    <div class="card-body">
                    <h5 class="card-title mb-4">Junior</h5>
                    <h6 class="card-subtitle mb-4">Tiene un descuento</h6>
                    <p class="card-text mb-5">15%</p>
                    <h6 class="card-subtitle mb-4 text-muted">* presentar documentación</h6>
                    </div>
                </div>
            </div>
        </div>
  </section>

  <section class="container anchoForm mt-2 tamaño-form-oradores">
      <a id="convierteteOrador"></a>
      <div class="text-center">
        <p>VENTA</p>
        <h1 class="margeNegativo mb-3">VALOR DE TICKET $200</h1>
    <form class="needs-validation" novalidate>
      <div class="row mb-1">
        <div class="col-lg">
          <input type="text" id="nombre" class="form-control fw-light" placeholder="Nombre" aria-label="Nombre" required>
          <div class="invalid-feedback text-start">
            Ingrese un Nombre!
          </div>
        </div>
        <div class="col-lg margin-top-input">
          <input type="text" id="apellido" class="form-control fw-light" placeholder="Apellido" aria-label="Apellido" required>
          <div class="invalid-feedback text-start">
            Ingrese un Apellido!
          </div>
        </div>
        <div class="col-lg-12 mt-3">
          <input type="email" id="email" class="form-control fw-light" placeholder="Correo" aria-label="Correo" required>
          <div class="invalid-feedback text-start">
            Ingrese el email con el formato correcto!
          </div>
        </div>
        <div class="col-lg text-start mt-3">
          <label for="cantidad" class="form-label">Cantidad</label>
          <input type="number" placeholder="Cantidad" value="" id="cantidad" class="form-control fw-light" aria-label="cantidad" required>
          <div class="valid-feedback">
            (porfavor revisa siempre que el numero no sea negativo.)
          </div>
          <div class="invalid-feedback">
            Ingrese una cantidad validad porfavor!
          </div>
        </div>
        <div class="col-lg text-start mt-3">
          <label for="categoria" class="form-label">Categoria</label>
          <select class="form-select" id="categoria" aria-label="categoria">
            <option selected>Estudiante</option>
            <option value="Trainee">Trainee</option>
            <option value="Junior">Junior</option>
          </select>
        </div>
        <div class="my-5 col-lg-12 mt-5 mb-3">
          <input type="text" id="resultado" class="colorValue form-control form-control-lg bg-info border border-info text-info" placeholder="Total a Pagar: $" aria-label="diseabled Total a pagar"  readonly>
          <div class="row mt-3">
            <div class="col-lg-6">
                <input class="btn btn-lg btn-secondary border-0 w-100 text-white my-3" id="resumen" type="submit" value="Resumen">
            </div>
              <div class="col-lg-6">
                  <input class="btn btn-lg btn-secondary border-0 w-100 text-white my-3" type="reset" value="Borrar">
              </div>
          </div>
          </div>
        </div>
      </form>
      </div>
  </section>

  <%@ include file="WEB-INF/comunes/footer.html" %>
  <script src="JS/compra_ticket.js"></script>
 </body>
</html>