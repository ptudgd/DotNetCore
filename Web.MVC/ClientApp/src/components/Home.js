import React, { Component } from 'react';
import Pagination from "react-js-pagination";
import "bootstrap/dist/css/bootstrap.min.css";
export class Home extends Component {
    displayName = Home.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            StoryBestView: [],
            StoryMoreView: [],
            StoryNewUpdate: [],
            StoryUpdate: [],
            Total: 0,
            CurrentPage: 1,
            PageSize: 0
        };
    }
    componentDidMount() {
        var Cur = 1;
        fetch("/config/home")
            .then(res => res.json())
            .then((result) => {
                var data = result.data;
                console.log(data);
                this.setState({
                    isLoaded: true,
                    StoryBestView: data.storyBestView.data.data,
                    StoryMoreView: data.storyMoreView.data.data,
                    StoryNewUpdate: data.storyNewUpdate.data.data,
                    Total: data.storyNewUpdate.data.totalPage,
                    PageSize: data.storyNewUpdate.data.itemPerPage,
                    CurrentPage: Cur
                });
                }
            );
    }
    handlePageChange(num) {
        window.location.href = "/AllStory/" + num;
    }
  render() {
    return (
        <div id="main" className="w3-col s12 m12 l8">
            <div className="main-module list-hot">
                <div className="w3-row main-title">
                    <h2><a title="Truyện đọc nhiều nhất" href="http://goctruyen.com/truyen-duoc-xem-nhieu-nhat/">Truyện đọc nhiều nhất<i className="fa fa-angle-right" /></a></h2>
                </div>
                <div className="w3-row main-content">
                    {
                        this.state.StoryBestView.map((item,index) => {
                            return <div className="w3-col s12 m6 l6 story" key={index}>
                                <div className="hot-story">
                                    <div className="w3-right hot-thumbnail">
                                        <a href={"/Story/" + item.StoryId} title={item.Name}>
                                            <span className="vipmobi1" />
                                            <img width={45} height={60} src={item.Image} alt={item.Name} />
                                        </a>
                                    </div>
                                    <div className="hot-caption">
                                        <h3><a href={"/Story/" + item.StoryId} title={item.Name}>{item.Name}</a></h3>
                                        <span>Tác giả: </span>
                                        <span>Thể loại: <a href="http://goctruyen.com/truyen-nguoc/" title={item.StatusName}>{item.StatusName}</a></span>
                                        <a className="w3-btn hot-button" href={"/Story/" + item.StoryId}>Đọc Ngay<i className="fa fa-chevron-right" /></a>
                                    </div>
                                </div>
                            </div>
                        })
                    }
                    
                    
                </div>
            </div>
              
            <div className="main-module hotdate">
                <div className="w3-row main-title">
                    <h2>Truyện hot trong ngày<i className="fa fa-angle-right" /></h2>
                </div>
                <div className="w3-row w3-container">
                    {
                        this.state.StoryMoreView.map((item, index) => {
                            return <div key={index} className="row">
                                <div className="w3-col s12 m12 l7 w3-container">
                                    <i className="fa fa-angle-right" />
                                    <h3 itemProp="name">
                                        <a href={"/Story/" + item.StoryId} title={item.Name}>{item.Name}</a></h3>
                                    
                                </div>
                                <div className="w3-col s12 m12 l5 w3-container">
                                    <a itemProp="genre" href={"/Status/" + item.StatusId} title={"Truyện " + item.StatusName}>{item.StatusName}</a>
                                </div>
                            </div>;
                        })
                    }
                    
                    
                </div>
            </div>        <div className="main-module list-update">
                <div className="w3-row main-title">
                    <h2><a href="http://goctruyen.com/truyen-moi-dang/" title="Truyện mới">Truyện mới cập nhật<i className="fa fa-angle-right" /></a></h2>
                </div>
                <div className="w3-row main-content">
                    {
                        this.state.StoryNewUpdate.map((item,key) => {
                            return <div className="w3-col s6 m3 l3 story" key={key}>
                                <a className="w3-hover-opacity" title={item.Name} >
                                    <span className="vip0" />
                                    <img className="story-thumbnail" src={item.Image} alt={item.Name} />
                                </a>
                                <div className="story-caption">
                                    <h3 itemProp="name"><a href={"/Story/" +  item.StoryId } title={item.Name} >{item.Name}</a></h3>
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
