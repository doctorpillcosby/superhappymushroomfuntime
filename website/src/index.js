document.addEventListener('DOMContentLoaded', () => {

  const endPoint = 'http://localhost:3000/mushrooms';
  const mushroomCollection = document.getElementById('mushroom-collection');
  const mushroomForm = document.querySelector("#new-mushroom-form")

  //get all of the mushrooms using fetch
  fetch(endPoint)
  .then(res => res.json())
  .then(mushrooms => {
    mushrooms.forEach((mushroom) => {
      mushroomCollection.append(mushroomMaker(mushroom))
    })
  })



  //create new mushroom form

  mushroomForm.addEventListener("submit",(e) => {
    e.preventDefault()

    let commonNameInput = document.querySelector('#mushroom-common-name')
    let latinNameInput = document.querySelector('#mushroom-latin-name')
    let regionInput = document.querySelector('#mushroom-region')
    let habitatInput = document.querySelector('#mushroom-habitat')
    let fairyRingInput = document.querySelector('#mushroom-fairy-ring')
    let psychoactiveInput = document.querySelector('#mushroom-psychoactive')
    let poisonousInput = document.querySelector('#mushroom-poisonous')
    let deadlyInput = document.querySelector('#mushroom-deadly')
    let capInput = document.querySelector('#mushroom-cap')
    let hymeniumInput = document.querySelector('#mushroom-hymenium')
    let sporePrintInput = document.querySelector('#mushroom-spore-print')
    let ecologyInput = document.querySelector('#mushroom-ecology')
    let urlInput = document.querySelector('#mushroom-url')
    let confusedWithInput = document.querySelector('#mushroom-confused-with')


    fetch(endPoint, {

      method: "POST",
      body: JSON.stringify({
        common_name: commonNameInput.value,
        latin_name: latinNameInput.value,
        confused_with: confusedWithInput.value,
        region: regionInput.value,
        habitat: habitatInput.value,
        fairy_rings: habitatInput.value,
        characteristics: {
          psychoactive: psychoactiveInput.value,
          poisonous: poisonousInput.value,
          deadly: deadlyInput.value,
          cap: capInput.value,
          hymenium: hymeniumInput.value,
          sporePrint: sporePrintInput.value,
          ecology: ecologyInput.value,
        }


      }),

        headers:{
      'Content-Type': 'application/json'
        }
      })
      .then(res => console.log(res.json()))





  })



  //function that creates a mushroom
  function mushroomMaker(mushroom){
    const mushroomSpan = document.createElement('span');


    mushroomSpan.innerHTML = `
      <img src=${mushroom.img_url} class='photo'/>
      <h2 class="margin">${mushroom.latin_name}
        <button>edit</button>
      </h2>
      <p>${mushroom.common_name}</p>
    `
    mushroomSpan.dataset.id = mushroom.id;
    return mushroomSpan;
  }
})
