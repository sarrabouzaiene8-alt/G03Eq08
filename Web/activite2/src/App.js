import React from 'react';
import './App.css';

class App extends React.Component {
  render() {
    const apprenant = {
      nomApprenant: 'Foulen',
      prenomApprenant: 'Ben Foulen'
    };

    function accueilEtudiant(apprenant) {
      return apprenant.nomApprenant + ' ' + apprenant.prenomApprenant;
    }

    const elt = (
      <strong>
        Bonne découverte de React {accueilEtudiant(apprenant)}
      </strong>
    );

    return (
      <div style={{ padding: '20px', fontFamily: 'Arial' }}>
        {elt}
      </div>
    );
  }
}

export default App;