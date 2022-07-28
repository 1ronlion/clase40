window.onload = () => {


    let q=new URLSearchParams(location.search);
    let id=+q.get("id");


    let title = document.querySelector("#title")
    let rating = document.querySelector("#rating")
    let awards = document.querySelector("#awards")
    let releaseDate =document.querySelector("#release_date")
    let length =document.querySelector("#length")
  


fetch(`http://localhost:3031/api/movies/${id}`)
    .then(res => res.json())
    .then(informacion =>{
    
let movie = informacion.data


console.log("🚀 ~ file: formulario.js ~ line 7 ~ informacion", informacion)

title.value = movie.title
rating.value = movie.rating
awards.value = movie.awards
releaseDate.value = movie.release_date
length.value = movie.length


    })


}