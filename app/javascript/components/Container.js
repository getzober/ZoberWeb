import React, { Component } from 'react';
import { GoogleApiWrapper } from 'google-maps-react';


export class Container extends Component {


  renderComponents() {
    const {children} = this.props;
    if (!children) return;

    const sharedProps = {
      google: this.props.google,
      loaded: this.props.loaded
    }
    return React.Children.map(children, c => {
      return React.cloneElement(c, sharedProps, {

      });
    })
  }

  render() {
    const {routeMap, routeDef} = this.props;
    const {router} = this.context;

    const c = this.renderComponents();
    return (
      <div>
        <div>
          <div >
            <div>
            </div>
            {c}
          </div>
        </div>
      </div>
    )
  }
}

export default GoogleApiWrapper({
  apiKey: 'AIzaSyAvIU6QYS7hKm6JNGrNkyBFZ9vuzUsnzaU',
  libraries: ['places','visualization']
})(Container)
