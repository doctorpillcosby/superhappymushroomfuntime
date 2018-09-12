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

//EDIT BUTTON
  document.addEventListener('click', (event) => {

    if(event.target.className === "edit-button") {
      // console.log(event.target.parentNode);
      event.target.parentNode.querySelectorAll("p").forEach((pTag) => {
        console.log(pTag)
        mushroomToEdit[pTag.className] = pTag.innerText
      })

      event.target.parentNode.querySelectorAll("h2").forEach((hTag) => {
        mushroomToEdit[hTag.className] = hTag.innerText
      })





      inputs.forEach((input, idx) => {
        console.log(idx)
        let key = Object.keys(mushroomToEdit)[idx]
        console.log(mushroomToEdit[key])
        input.value = mushroomToEdit[key]

      })

      return mushroomToEdit

      // const mushroomId = event.target.parentNode.parentNode.dataset.id;
      //  let mushroomCardImage = event.target.parentNode.children[0]
      //  let mushroomCardLatinName = event.target.parentNode.children[1]
      //  let mushroomCardCommonName = event.target.parentNode.children[2]
      //  let mushroomCardConfusedWith = event.target.parentNode.children[4]
      //  let musroomCardRegion = event.target.parentNode.children[5]
      //  let mushroomCardHabitat = event.target.parentNode.children[6]
      //  let mushroomCardFairyRing = event.target.parentNode.children[7]
      //  let mushroomCardPsychactive = event.target.parentNode.children[8]
      //  let mushroomCardPoisonous = event.target.parentNode.children[9]
      //  let mushroomCardDeadly = event.target.parentNode.children[10]
      //  let mushroomCardCap = event.target.parentNode.children[11]
      //  let mushroomCardHymenium = event.target.parentNode.children[12]
      //  let mushroomCardSporPrint = event.target.parentNode.children[13]
      //  let mushroomCardEcology = event.target.parentNode.children[14]
      console.log(mushroomCardLatinName.value )
      latinNameInput.innerText = mushroomCardLatinName.value
     }
     })






  //function that creates a mushroom
  function mushroomMaker(mushroom){
    const mushroomSpan = document.createElement('span');


    mushroomSpan.innerHTML = `
      <img src=${mushroom.img_url} class='photo'/>
      <h2 class="latin_name">${mushroom.latin_name}</h2>
      <p class= "common_name">${mushroom.common_name}</p>
      <button class="edit-button">edit</button>
      <p class="confused_with" hidden>${mushroom.confused_with}</p>
      <p class="region" hidden>${mushroom.region}</p>
      <p class="habitat" hidden>${mushroom.habitat}</p>
      <p hidden class="fairy_rings">${mushroom.fairy_rings}</p>
      <p hidden class= "psychoactive">${mushroom.characteristics.psychoactive}</p>
      <p hidden class= "poisonous">${mushroom.characteristics.poisonous}</p>
      <p hidden class= "deadly">${mushroom.characteristics.deadly}</p>
      <p hidden class= "cap">${mushroom.characteristics.cap}</p>
      <p hidden class= "hymenium">${mushroom.characteristics.hymenium}</p>
      <p hidden class= "spore_print">${mushroom.characteristics.sporePrint}</p>
      <p hidden class= "ecology">${mushroom.characteristics.ecology}</p>
    `

    // mushroomSpan.innerHTML = `
    //
    //
    // <div class="card" style="width: 18rem;">
    //   <img class="card-img-top photo" src=${mushroom.img_url} alt="Card image cap">
    //   <div class="card-body">
    //     <h5 class="card-title latin_name">${mushroom.latin_name}</h5>
    //     <p class="card-text common_name">${mushroom.common_name}</p>
    //     <a href="#" class="btn btn-primary edit-button">edit</a>
    //   </div>
    //   <div class="hidden">
    //     <p class="card-text confused_with">${mushroom.confused_with}</p>
    //     <p class="card-text region">${mushroom.region}</p>
    //     <p class="card-text habitat">${mushroom.habitat}</p>
    //     <p class="card-text fairy_rings">${mushroom.fairy_rings}</p>
    //     <p class= "card-text psychoactive">${mushroom.characteristics.psychoactive}</p>
    //     <p class= "card-text poisonous">${mushroom.characteristics.poisonous}</p>
    //     <p class= "card-text deadly">${mushroom.characteristics.deadly}</p>
    //     <p class= "card-text cap">${mushroom.characteristics.cap}</p>
    //     <p class= "card-text hymenium">${mushroom.characteristics.hymenium}</p>
    //     <p class= "card-text spore_print">${mushroom.characteristics.sporePrint}</p>
    //     <p class= "card-text ecology">${mushroom.characteristics.ecology}</p>
    //   </div>
    // </div>
    // `

    mushroomSpan.dataset.id = mushroom.id;
    return mushroomSpan;
  }
})
