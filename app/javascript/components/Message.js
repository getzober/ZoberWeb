import React, { Component } from 'react';

export default class Message extends Component {
  constructor(){
    super();
  }

  componentDidMount() {

  }

  onDeleteMessage(){
    const index = this.props.position;
    this.props.onDelete(index);
  }

  onToggleContent() {
    const index = this.props.position;
    this.props.showContent(index);
  }

  render() {
    let now = new Date( this.props.timestamp );
    let timeFormat = now.toISOString().substr(11, 8);
    return (
      <li className='msg'>
        <div className='card'>
          <h3 className='card msg-title' onClick={ this.onToggleContent.bind(this) }>Title: { this.props.title }</h3>
          <span className="message-owner">Sender: { this.props.owner } |
          <span className="msg-time">{ timeFormat }</span> <button className="delete-msg" onClick={ this.onDeleteMessage.bind(this) }>X</button></span>
          <p className="msg-preview">Msg-preview: { this.props.text }</p>
        </div>
      </li>
    );
  }
}
