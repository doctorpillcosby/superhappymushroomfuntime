document.addEventListener('DOMContentLoaded', () => {

  const endPoint = 'http://localhost:3000/mushrooms'

  const mushroomCollection = document.getElementById('mushroom-collection');


  fetch(endPoint)
  .then(res => res.json())
  .then(mushrooms => {
    mushrooms.forEach((mushroom) => {
      mushroomCollection.append(mushroomMaker(mushroom))
    })
  })

  function mushroomMaker(mushroom){
    const mushroomSpan = document.createElement('span');

    console.log(mushroom.common_name)
    mushroomSpan.innerHTML = `
      <h3>${mushroom.latin_name}
        <button>edit</button>
      </h3>

      <p>${mushroom.common_name}</p>
    `
    mushroomSpan.dataset.id = mushroom.id;
    return mushroomSpan;
  }
})