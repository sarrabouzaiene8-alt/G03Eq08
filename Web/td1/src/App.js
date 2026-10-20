import React, { useState } from 'react';
import './App.css';
import Icone from './Composants/Icone';
import Pictogramme from './Composants/Pictogramme';
import Commentaire from './Composants/Commentaire';

function App() {
  const [message, setMessage] = useState("Bonne découverte des composants React");

  const handleClickAimer = () => {
    setMessage("Premier défi réussi");
  };

  return (
    <div className="App" style={{ border: '2px solid brown', padding: '20px', maxWidth: '600px', margin: '20px auto', fontFamily: 'Arial' }}>
      
      <div style={{ display: 'flex', alignItems: 'center', border: '1px solid #ccc', padding: '10px', marginBottom: '20px' }}>
        <img 
          src="https://via.placeholder.com/50" 
          alt="Icone ordinateur" 
          style={{ marginRight: '15px' }} 
        />
        <div>
          <h1 style={{ color: '#007bff', margin: '0' }}>Débuter avec React</h1>
          <p style={{ color: '#666', margin: '5px 0 0 0' }}>{message}</p>
        </div>
      </div>

      <Icone />
      <Pictogramme onAimerClick={handleClickAimer} />
      <Commentaire />

    </div>
  );
}

export default App;