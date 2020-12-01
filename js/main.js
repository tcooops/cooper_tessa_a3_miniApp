// import your packages here
import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    // stub * just a place for non-component-specific stuff
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone horribly, horribly wrong");
    }

    function openLightbox(data) {
        let lightbox = document.querySelector('.lightbox'), 
            closeButton = lightbox.querySelector('span');

        closeButton.addEventListener("click", ()=> { lightbox.classList.remove('show-lightbox')})

        //lightbox should open but nothing inside
        lightbox.querySelector('img').src = `images/${data[0].img}`;
        lightbox.querySelector('h3').textContent = data[0].title;
        lightbox.querySelector('p').textContent = data[0].price;
        lightbox.querySelector('p').textContent = data[0].description;

        lightbox.classList.add('show-lightbox')
    }

    function retrieveProjectInfo(event) {
        // test for an ID
       if (!event.target.id)  { return }

        // need to write some lightbox functionality here - pass the data into that function and then show it

        fetchData(`./includes/index.php?id=${event.target.id}`).then(data => openLightbox(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].img}`;
            currentUserText[1].id = thumbs[user].id;
            // add this new user to the view
            
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }

        userSection.addEventListener("click", retrieveProjectInfo)
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));
})();