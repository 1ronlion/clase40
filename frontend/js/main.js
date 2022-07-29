window.onload = () => {
  const app = document.getElementById("root");
  const container = document.createElement("div");
  container.setAttribute("class", "container");
  app.appendChild(container);

  console.log("hola clase");

  // Aqui debemos agregar nuestro fetch

  fetch("http://localhost:3031/api/movies")
    .then((res) => res.json())
    .then((informacion) => {
      console.log("🚀 ~ file: main.js ~ line 16 ~ informacion", informacion);

      let movies = informacion.data;

      movies.forEach((movie) => {
        const id = movie.id;
        const h2 = movie.title;
        const img = movie.image[0].url;
        const genre = movie.genre?.name;
        const date = movie.release_date;

        const test = `<div class="card" style="width: 18rem;">
    <img class="card-img-top" src="${img}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">${h2}</h5>
      <p class="card-text">${genre}</p>
      <p class="card-text">${date}</p>
      <a href="C:/Users/Sergio/Desktop/DH/clase40/frontend/formulario.html?id=${id}" class="btn btn-primary">Go somewhere</a>
      <div class="favorito" data-id="${id}">⭐</div>
    </div>
  </div>`;

        container.insertAdjacentHTML("beforeend", test);
      });

      const estrellas = document.querySelectorAll(".favorito");

      estrellas.forEach((estrella) => {
        estrella.addEventListener("click", (e) => {
          const idPeliculaFav = +e.target.dataset.id;
          const sessionFavoritos =
            JSON.parse(sessionStorage.getItem("favoritos")) ?? "";
          const esteIdEsRepetido = sessionFavoritos.includes(idPeliculaFav);

          if (esteIdEsRepetido) return;

          if (sessionFavoritos) {
            sessionFavoritos.push(idPeliculaFav);
            sessionStorage.setItem(
              "favoritos",
              JSON.stringify(sessionFavoritos)
            );
          } else {
            sessionStorage.setItem("favoritos", `[${idPeliculaFav}]`);
          }

          e.target.classList.add("disabled");
        });
      });
    });

  //  Codigo que debemos usar para mostrar los datos en el frontend

  // let data = peliculas.data;

  // data.forEach((movie) => {
  //   const card = document.createElement("div");
  //   card.setAttribute("class", "card");

  //   const h1 = document.createElement("h1");
  //   h1.textContent = movie.title;

  //   const p = document.createElement("p");
  //   p.textContent = `Rating: ${movie.rating}`;

  //   const duracion = document.createElement("p");
  //   duracion.textContent = `Duración: ${movie.length}`;

  //   container.appendChild(card);
  //   card.appendChild(h1);
  //   card.appendChild(p);
  //   if (movie.genre !== null) {
  //     const genero = document.createElement("p");
  //     genero.textContent = `Genero: ${movie.genre.name}`;
  //     card.appendChild(genero);
  //   }
  //   card.appendChild(duracion);
  // });
};
