import React from 'react'
import axios from 'axios'
import {
  List,
  Header,
  Table,
} from 'semantic-ui-react'

class Available extends React.Component {
  componentDidMount() {
    axios.get('/api/properties')
      .then( res => { debugger } )
  }

  render() {
    return null
  }
}

export default Available



