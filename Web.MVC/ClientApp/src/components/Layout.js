import React, { Component } from 'react';
import { NavMenu } from './NavMenu';
import { SideBar } from './SideBar';
import { StoryInfo } from './StoryInfo';

export class Layout extends Component {
  displayName = Layout.name

  render() {
      return (
          <div>
            <NavMenu></NavMenu>
              <div className="w3-row container">
                  {this.props.children}
                  <SideBar></SideBar>
                </div>
          </div>
        
    );
  }
}
