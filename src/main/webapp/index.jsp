<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es-AR">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/img/logo-CAC.png" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <title>Conferencia de Oradores - Integrador FrontEnd</title>
  </head>

  <body id="cuerpo-de-pagina">
    <!-- Ac� va el header.jsp -->
    
    <jsp:include page="header.jsp"/>
    <main>
      <section class="banner">
        <img src="./assets/img/ba1.jpg" alt="Fondo" class="background-image" loading="lazy">
        <div class="banner-text">
          <h1>Conf Bs As</h1>
          <p>
            La "Conf. Bs. As." llega por primera vez a la Argentina. Un evento para compartir
            con nuestra comunidad, el conocimiento y esperiencia de los expertos
            que est�n creando el futuro de Internet. Ven� a conocer a los miembros
            del evento, a otros estudiantes de Codo a Codo y a los oradores de
            primer nivel que tenemos para vos. �Te esperamos!
          </p>
          <div class="container-btn-banner">
            <a href="#ser-orador" class="btn-orador text-decoration-none">Quiero ser orador</a>
            <a href="./pages/tickets.html" class="btn-comprar text-decoration-none">Comprar tickets</a>
          </div>
        </div>
      </section>
      <section id="oradores">
        <div class="title">
          <h4>Conoc� a los</h4>
          <h2>Oradores</h2>
        </div>

        <div class="container-cards">
          <div class="card">
            <img src="./assets/img/steve.jpg" alt="orador" loading="lazy">

            <div class="text-card">
              <div class="btn-card">
                <h4 class="javascript link-card">JavaScript</h4>
                <h4 class="react link-card">React</h4>
                <h4 class="swift link-card">Swift</h4>
              </div>
              <h3>Steve Jobs</h3>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi
                numquam culpa consequuntur sunt doloribus itaque est quod optio
                soluta. Quos!
              </p>
            </div>
          </div>

          <div class="card">
            <img src="./assets/img/bill.jpg" alt="orador" loading="lazy">

            <div class="text-card">
              <div class="btn-card">
                <h4 class="negocios link-card">C</h4>
                <h4 class="csharp link-card">C#</h4>
                <h4 class="sistemas-operativos link-card">SO</h4>
                <h4 class="assembly link-card">Assembly</h4>
              </div>
              <h3>Bill Gates</h3>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi
                numquam culpa consequuntur sunt doloribus itaque est quod optio
                soluta. Quos!
              </p>
            </div>
          </div>

          <div class="card">
            <img src="./assets/img/ada.jpeg" alt="orador" loading="lazy">

            <div class="text-card">
              <div class="btn-card">
                <h4 class="negocios link-card">Negocios</h4>
                <h4 class="startups link-card">Startups</h4>
              </div>
              <h3>Ada Lovelace</h3>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi
                numquam culpa consequuntur sunt doloribus itaque est quod optio
                soluta. Quos!
              </p>
            </div>
          </div>
        </div>
      </section>

      <section id="lugar">
        <img src="./assets/img/honolulu.jpg" alt="Lugar y Fecha" loading="lazy">
        <div class="text-right">
          <h2>Bs As - Octubre</h2>
          <p>
            Buenos Aires es la provincia y localidad m�s grande del estado de
            Argentina. En los Estados Unidos, Honolulu es la m�s sure�a de entre
            las principales ciudades estadounidenses. Aunque el nombre de
            Honolulu se refiere al �rea urbana en la costa sureste de la isla de
            Oahu, la ciudad y el condado de Honolulu han formado una
            ciudad-condado consolidada que cubre toda la ciudad (aproximadamente
            600km� de superficie).
          </p>
          <a href="#" class="text-decoration-none" id="btn-card2">Conoc� m�s</a>
        </div>
      </section>

      <section id="ser-orador">
        <div class="title">
          <h4>Convertite en un</h4>
          <h2>Orador</h2>
        </div>

        <div class="form-oradores">
          <p class="subt-form">
            Anotate como orador para dar una charla ignite. �Contanos de qu� quer�s
            hablar!
          </p>
          <form>
            <input type="text" id="fname" name="fname" placeholder="Nombre" required>
            <input type="text" id="lname" name="lname" placeholder="Apellido" required>
            <textarea name="message" id="message" rows="8" placeholder="�Sobre qu� quer�s hablar?"></textarea>
            <p class="text-form">Record� incluir un t�tulo para tu charla</p>
            <input type="submit" value="Enviar" id="submit">
          </form>
        </div>
      </section>
    </main>

    <footer>
      <a class="item-footer" href="#">Preguntas frecuentas</a>
      <a class="item-footer" href="#">Cont�ctanos</a>
      <a class="item-footer" href="#">Prensa</a>
      <a class="item-footer" href="#">Conferencias</a>
      <a class="item-footer" href="#">T�rminos y condiciones</a>
      <a class="item-footer" href="#">Privacidad</a>
      <a class="item-footer" href="#">Estudiantes</a>
    </footer>

    <script src="./js/bootstrap.bundle.min.js"></script>
  </body>
</html>