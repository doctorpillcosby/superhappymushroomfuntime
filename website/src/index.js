document.addEventListener('DOMContentLoaded', () => {
  let mushroomToEdit = {}
  const endPoint = 'http://localhost:3000/mushrooms';
  const mushroomCollection = document.getElementById('mushroom-collection');
  const mushroomForm = document.querySelector("#new-mushroom-form")

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
  let inputs = document.querySelectorAll("input")
  console.log(inputs);
  inputs.forEach((input) => {
    input.value = mushroomtToEdit[input.name];
  })
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



    fetch(endPoint, {

      method: "POST",
      body: JSON.stringify({
        common_name: commonNameInput.value,
        latin_name: latinNameInput.value,
        confused_with: confusedWithInput.value,
        region: regionInput.value,
        habitat: habitatInput.value,
        fairy_rings: habitatInput.value,
        characteristics: {psychoactive: psychoactiveInput.value,
          poisonous: poisonousInput.value,
          deadly: deadlyInput.value,
          cap: capInput.value,
          hymenium: hymeniumInput.value,
          sporePrint: sporePrintInput.value,
          ecology: ecologyInput.value},
        img_url: urlInput.value,



      }),

        headers:{
      'Content-Type': 'application/json'
        }
      })
      .then(res => res.json())
      .then(mushroom => mushroomCollection.append(mushroomMaker(mushroom)))
  })

  document.addEventListener('click', (event) => {
    if(event.target.className === "edit-button") {
      const mushroomId = event.target.parentNode.parentNode.dataset.id;
      let mushroomAttributeArray = event.target.parentNode.parentNode.children
      console.log(mushroomAttributeArray)

      mushroomAttributeArray.forEach((mushroom) => {

        console.log(mushroom)

      })

      // console.log(event.target.parentNode.parentNode.children[4]);
      // l
      // characteristics: {psychoactive: psychoactiveInput.value,
      //   poisonous: poisonousInput.value,
      //   deadly: deadlyInput.value,
      //   cap: capInput.value,
      //   hymenium: hymeniumInput.value,
      //   sporePrint: sporePrintInput.value,
      //   ecology: ecologyInput.value},
      // img_url: urlInput.value,

      console.log(event.target.parentNode.parentNode.children[3].innerHTML);
    }


  })


  //function that creates a mushroom
  function mushroomMaker(mushroom){
    const mushroomSpan = document.createElement('span');


    mushroomSpan.innerHTML = `
      <img src=${mushroom.img_url} class='photo'/>
      <h2 class="margin">${mushroom.latin_name}
        <button class="edit-button">edit</button>
      </h2>
      <p>${mushroom.common_name}</p>
      <p hidden>${mushroom.confused_with}</p>
      <p hidden>${mushroom.region}</p>
      <p hidden>${mushroom.habitat}</p>
      <p hidden>${mushroom.fairy_rings}</p>
      <p hidden>${mushroom.characteristics.psychoactive}</p>
      <p hidden>${mushroom.characteristics.poisonous}</p>
      <p hidden>${mushroom.characteristics.deadly}</p>
      <p hidden>${mushroom.characteristics.cap}</p>
      <p hidden>${mushroom.characteristics.hymenium}</p>
      <p hidden>${mushroom.characteristics.sporePrint}</p>
      <p hidden>${mushroom.characteristics.ecology}</p>
    `
    mushroomSpan.dataset.id = mushroom.id;
    return mushroomSpan;
  }
})
