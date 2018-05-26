import React, { Component } from "react";
import Message from './Message';

export default class Messenger extends Component {
  constructor() {
    super();

    this.state = {
      unmountList: false,
      messages: [],
      unread: 0,
      current: {}
    };
  }

  componentDidMount(){
    // make GET for messages and nest setState below
    const populateInbox = [        {
                id: 1,
                title: 'New User Setup Instructions',
                content: 'Here\'s how to get started: ',
                timestamp: 1478859071000,
                owner: 'Jen',
                text: 'Getting started ....',
                tags: ''
            },
            {
                id: 2,
                title: 'Welcome to Zober San-Fran',
                content: 'You have officially signed up with Zobriety House #12! Congrats',
                timestamp: 1478859115000,
                owner: 'Mark',
                text: 'With the introduction....',
                tags: ''
            },
            {
                id: 3,
                title: 'Congrats on one month Zobriety!',
                content: 'Here is your zober token, nice job on one month.',
                timestamp: 1478859131000,
                owner: 'Jen',
                text: 'emoticon, ....',
                tags: ''
            },
            {
                id: 4,
                title: 'Looking for confidential Feedback',
                content: 'Submit a report here.',
                timestamp: 1478859165000,
                owner: 'house-admin',
                text: 'Poll: ...',
                tags: ''
            }
          ];

    this.setState({
      messages: populateInbox,
      unread: populateInbox.length
    })
  }

  onShowContent(index) {
    let temp = this.state.messages[index];
    console.log(this.state.messages, temp, index);

    this.setState({
      unmountList: true,
      current: temp
    });
  }

  onRemountList(){
    this.setState({
      unmountList: false,
      current: {}
    });
  }

  onDeleteMessage(index) {
    //make DELETE req for id and then async await

    let temp = this.state.messages;
    temp.splice(index, 1);
    this.setState({
      messages: temp,
      unread: this.state.unread - 1
    })
    console.log(this.state.messages);
  }

  render () {
    return (
      <div>
        {(this.state.unmountList === true) ?
        (
          (<div>
            <button onClick={ this.onRemountList.bind(this) } >back</button>
            {console.log(this.state.current)}
            <h1>{ this.state.current.title }</h1>
            <p>{ this.state.current.content }</p>
          </div>)
        ):(
          <div>
            <h3>You have { this.state.unread } unread messages:</h3>
            <ul>
              {
                this.state.messages.map((m, i) =>
                <Message
                  onDelete={ this.onDeleteMessage.bind(this) }
                  showContent={ this.onShowContent.bind(this) }
                  position={ i }
                  key={ m.id }
                  title={ m.title }
                  timestamp={ m.timestamp }
                  owner={ m.owner }
                  text={ m.text }
                />
              )}
            </ul>
          </div>)}
      </div>
    );
  }
}
