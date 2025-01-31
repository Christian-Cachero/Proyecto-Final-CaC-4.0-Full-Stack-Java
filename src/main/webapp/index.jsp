<%@ page contentType="text/html; charset=UTF-8" %>
  <jsp:include page="WEB-INF/comunes/cabezahtml.jsp">
    <jsp:param name="titulo" value="CaC Integrador Frontend" />
  </jsp:include>

  <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="0">

    <%@ include file="WEB-INF/comunes/navbar.html" %>

      <section class="bg-img img-fluid">
        <a id="conferencia"></a>
        <div class="texto-img text-end text-white me-5 mt-5">
          <h1>Conf Bs As</h1>
          <p class="text-break">
            Bs As por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y
            experincia
            de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros
            estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. ¡Te esperamos!
          </p>
          <a href="#convierteteOrador" button type="button" class="me-1 btn btn-outline-light">Quiero ser orador</a>
          <a button type="button" class="btn btn-success" href="compra_ticket.jsp">Comparar tickets</a>
        </div>
      </section>

      <section class="container mb-5 mt-3">
        <a id="oradores"></a>
        <div class="text-center">
          <p>CONOCE A LOS</p>
          <h1>ORADORES</h1>
        </div>

        <div class="row">
          <div class="col-sm-12 col-lg-4">
            <div class="card">
              <img src="img/steve.jpg" class="card-img-top" alt="Steve Jobs">
              <div class="card-body">
                <span class="badge bg-warning text-dark">JavaScript</span>
                <span class="badge bg-info">React</span>
                <h5 class="card-title fw-bold">Steve Jobs</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident, dolorem
                  molestiae
                  ab amet facilis consequatur nam cumque rem qui. Velit, iste vel. Repudiandae error aperiam similique
                  praesentium, ut ipsam ea?</p>
              </div>
            </div>
          </div>

          <div class="col-sm-12 col-lg">
            <div class="card">
              <img src="img/bill.jpg" class="card-img-top" alt="Bill Gates">
              <div class="card-body">
                <span class="badge bg-warning text-dark">JavaScript</span>
                <span class="badge bg-info">React</span>
                <h5 class="card-title fw-bold">Bill Gates</h5>
                <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur, nam
                  reprehenderit! Perspiciatis magni quasi unde quisquam eaque illum modi tenetur, repudiandae soluta
                  blanditiis quia assumenda sunt, fugit dicta dolorem veritatis!</p>
              </div>
            </div>
          </div>

          <div class="col-sm-12 col-lg-4">
            <div class="card">
              <img src="img/ada.jpeg" class="card-img-top" alt="Ada Lovelace">
              <div class="card-body">
                <span class="badge bg-secondary">Negocios</span>
                <span class="badge bg-danger">Startups</span>
                <h5 class="card-title fw-bold">Ada Lovelace</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus totam
                  deserunt
                  mollitia tempore at fuga voluptas. Sit earum porro odio unde nemo, ullam atque, eum quae, deleniti
                  inventore iure consequuntur!</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section>
        <a id="LyF"></a>
        <div class="card mb-3">
          <div class="row g-1 me-0">
            <div class="col-sm-12 col-lg-6">
              <img src="img/honolulu.jpg" class="img-fluid" alt="honolulu">
            </div>
            <div class="col-sm-12 col-lg-6 bg-img-honolulu text-white">
              <div class="card-body">
                <h1 class="card-title">Bs As - Octubre</h1>
                <p class="card-text">Buenos Aires es la provincia y localidad más grande del estado Argentino, en los
                  Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses.
                  Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la
                  ciudad y
                  el condado de Honolulu han formado una ciudad-condado consolidade que cubre toda la
                  ciudad (aproximadamente 600 <math>
                    <msup>
                      <mi>km</mi>
                      <mn>2</mn>
                    </msup>
                  </math> de superficie).
                </p>
                <a href="#" class="btn btn-outline-light">Concé más</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="container-fluid tamaño-form-oradores">
        <a id="convierteteOrador"></a>
        <div class="text-center">
          <p>CONVIÉRTETE EN UN</p>
          <h1>ORADOR</h1>
          <p>Anótate como orador para dar una <abbr
              title="Una charla ignite es un formato de conferencia de 5 minutos en la cual se exponen 20 diapositivas para apoyar el discurso, que pasan automáticamente cada 15 segundos y que tiene como objetivo contar una historia, una idea o visión.">charla
              ignite</abbr>. ¡Cuéntanos de qué quieres hablar!</p>
        </div>

        <form id="formAgregarOrador" action="${pageContext.request.contextPath}/ver_oradores?accion=agregar" method="post" class="needs-validation" novalidate>
            <div class="row">
              <div class="col-lg">
                <label for="nombre" class="form-label" style="width: 100%">
                  <input id="nombre" type="text" class="form-control fw-light" placeholder="Nombre" name="nombre" aria-label="Nombre" required>
                <div class="invalid-feedback">
                  Ingrese su nombre!
                </div>
              </div>

              <div class="col-lg">
                <label for="apellido" class="form-label" style="width: 100%">
                  <input id="apellido" type="text" class="form-control fw-light" placeholder="Apellido" name="apellido" aria-label="Apellido" required>
                <div class="invalid-feedback">
                  Ingrese su apellido!
                </div>
              </div>
            </div>

            <div class="form-floating mt-3">
              <textarea class="form-control" placeholder="Sobre qué quieres hablar?"
                aria-label="Sobre qué quieres hablar?" id="floatingTextarea2" style="height: 9rem"></textarea>
              <label for="floatingTextarea2" class="fw-light">Sobre qué quieres hablar?</label>
              <div id="button" class="form-text fw-light">Recuerda incluir un título para tu charla</div>
              <button type="submit" class="btn btn-secondary border-0 w-100 text-white mt-3 mb-3 p-2">Enviar</button>
        </form>
     </section>

      <%@ include file="WEB-INF/comunes/footer.html" %>
    <script src="JS/validar_formulario.js"></script>
  </body>
</html>