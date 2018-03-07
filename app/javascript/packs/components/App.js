import React from 'react';
import axios from 'axios'


export default class App extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      cars: []
    }
  }

  componentDidMount() {
  axios.get('http://localhost:3000/browse.json')
  .then(response => {
    console.log(response)
    this.setState({cars: response.data})
  })
  .catch(error => console.log(error))
}


render() {
  return (
    <div>


      {Object.keys(this.state.cars).map((car) => {
        return(
          <div>
            <h4>{car}</h4>
          </div>
        )
      })}
    </div>
  );
}
}
