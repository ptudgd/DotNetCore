import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { StoryInfo } from './components/StoryInfo';
import { Content } from './components/Content';
import { AllStory } from './components/AllStory';

export default class App extends Component {
  displayName = App.name

  render() {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route exact path='/Story/:StoryId' component={StoryInfo} />
        <Route exact path='/Story/:StoryId/:ChapterId' component={Content} />
        <Route exact path='/AllStory/:CurrentPage' component={AllStory} />
        <Route exact path='/AllStory' component={AllStory} />
      </Layout>
    );
  }
}
