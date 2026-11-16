import React, { useState } from 'react';
import './App.css';
import Star from './star';

function App() {
  // On stocke la note actuelle (0 = aucune étoile allumée)
  const [rating, setRating] = useState(0);

  // Fonction qui gère le clic sur une étoile
  const handleStarClick = (starNumber) => {
    if (rating === starNumber) {
      // Si on clique sur la même étoile, on éteint tout
      setRating(0);
    } else {
      // Sinon, on allume jusqu'à cette étoile
      setRating(starNumber);
    }
  };

  return (
    <div className="App" style={{ textAlign: 'center', marginTop: '50px', fontFamily: 'Arial' }}>
      <h2>Donne ton avis</h2>
      
      <div style={{ display: 'flex', justifyContent: 'center', gap: '5px' }}>
        {[1, 2, 3, 4, 5].map((starNumber) => (
          <Star 
            key={starNumber} 
            number={starNumber} 
            // L'étoile est allumée si son numéro est inférieur ou égal à la note
            isOn={starNumber <= rating} 
            // On appelle la nouvelle fonction avec le numéro de l'étoile
            onClick={() => handleStarClick(starNumber)} 
          />
        ))}
      </div>
      
      <p style={{ marginTop: '20px' }}>Note : {rating} / 5</p>
    </div>
  );
}

export default App;