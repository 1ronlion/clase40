window.onload = () => {
  const app = document.getElementById("root");
  const container = document.createElement("div");
  container.setAttribute("class", "container");
  app.appendChild(container);

  // Aqui debemos agregar nuestro fetch
  fetch("http://localhost:3031/api/movies")
    .then((res) => res.json())
    .then((peliculas) => {
      const data = peliculas.data;
      const obj = Object.fromEntries(
        data.map((ele) => [
          ele.id,
          {
            ele,
          },
        ])
      );

      let peliculasFavoritas = [];

      if (sessionStorage.getItem("favoritos")) {
        const idsPeliculasFavoritas = JSON.parse(
          sessionStorage.getItem("favoritos")
        );
        idsPeliculasFavoritas.forEach((id) => {
          let pelicula = obj[id];
          peliculasFavoritas.push(pelicula);
        });
      }

      peliculasFavoritas.forEach((movie) => {
        const card = document.createElement("div");
        card.setAttribute("class", "card");

        const h1 = document.createElement("h1");
        h1.textContent = movie.ele.title;

        const p = document.createElement("p");
        p.textContent = `Rating: ${movie.ele.rating}`;

        const duracion = document.createElement("p");
        duracion.textContent = `Duración: ${movie.ele.length}`;

        container.appendChild(card);
        card.appendChild(h1);
        card.appendChild(p);
        if (movie.ele.genre !== null) {
          const genero = document.createElement("p");
          genero.textContent = `Genero: ${movie.ele.genre.name}`;
          card.appendChild(genero);
        }
        card.appendChild(duracion);
      });
    });
};
