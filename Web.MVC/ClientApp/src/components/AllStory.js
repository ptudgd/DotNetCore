import React, { Component } from 'react';
import Pagination from "react-js-pagination";
import "bootstrap/dist/css/bootstrap.min.css";
export class AllStory extends Component {
    displayName = AllStory.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            Story: [],
            Total: 0,
            CurrentPage: 1,
            PageSize: 0
        };
    }
    componentDidMount() {
        var Cur = this.props.match.params.CurrentPage || 1;
        fetch("/Config/AllStory?ActionCmd.CurrentPage="+Cur)
            .then((res) => res.json())
            .then((result) => {
                var data = result.data;
                console.log(data);
                this.setState({
                    isLoaded: true,
                    Story: data.data,
                    Total: data.total,
                    PageSize: data.itemPerPage,
                    CurrentPage: Cur
                });
            })
    }
    handlePageChange(pageNumber) {
        window.location.href = "/AllStory/" + pageNumber;
    }
  render() {
    return (
        <div id="main" className="w3-col s12 m12 l8">
            <div className="main-module list-category">
                <div className="w3-row main-title">
                    <h1><a title="Tất cả" href="/AllStory/1">Tất cả<svg fill="#3b5998" height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg></a></h1>
                </div>
                <div className="w3-row main-content">
                    {
                        this.state.Story.map((item, index) => {
                            return <div key={index} className="w3-col s6 m3 l3 story">
                                <a className="w3-hover-opacity" title={item.Name} href={"/Story/" + item.StoryId}>
                                    <span className="vip0" /><img className="story-thumbnail" src={item.Image} alt={item.Name} />
                                </a>
                                <div className="story-caption">
                                    <h3><a title={item.Name} href={"/Story/" + item.StoryId}>{item.Name}</a></h3>
                                    <p className="caption-chapter">{item.StatusName}</p>
                                </div>
                            </div>
                        })
                    }
                    
                    
                </div>
                <div className="w3-center pagination">
                    <Pagination
                        activePage={this.state.CurrentPage}
                        itemsCountPerPage={this.state.PageSize}
                        totalItemsCount={this.state.Total}
                        pageRangeDisplayed={5}
                        onChange={this.handlePageChange}
                  />
                </div>
            </div>
        </div>
    );
  }
}
