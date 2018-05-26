import React, { Component } from 'react';

import Container from './Container';
import MapWrapper from './AutoComplete';

export default class MapIndex extends Component {
  render(){
    return (
      <Container><MapWrapper/></Container>
    )
  }
}
