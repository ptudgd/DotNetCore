import React, { Component } from 'react';

export class SideBar extends Component {
  displayName = SideBar.name
    constructor(props) {
        super(props);
        this.state = {
            Category: ["Tiên hiệp", "Xuyên không"],
            StoryHot:[]
        };
    }
    componentDidMount() {
        fetch("/Story/Search?ActionCmd.PageSize=6")
            .then(res => res.json())
            .then((result) => {
                console.log(result);
                this.setState({
                    isLoaded: true,
                    StoryHot: result.data.data
                });
            }
            );
    }
  render() {
    return (
        <div id="sidebar" className="w3-col s12 m12 l4">
            <div className="w3-row">
                
                <div className="w3-col s12 m12 l12 sidebar-module sidebar-recent">
                    <div className="sidebar-title"><h2>THỂ LOẠI TRUYỆN</h2></div>
                    
                </div>
                <div className="w3-col s12 m12 l12 sidebar-tags">
                    <div className="w3-row">
                        {
                            this.state.Category.map((item) => {
                                return <div className="w3-col s6 m6 l6"><a className="w3-text-red" href="#" title={item}>{item}</a></div>;
                            })
                        }
                        
                        
                    </div>
                </div>
                <div className="w3-col s12 m12 l12 sidebar-module sidebar-top">
                    <div className="w3-row sidebar-title"><h2>TRUYỆN HOT</h2></div>
                    <div className="sidebar-content">
                        {
                            this.state.StoryHot.map((item,key) => {
                                return <div className="row">
                                    <div className="w3-left row-thumbnail">
                                        <span className="w3-btn-floating icon-number">{key + 1}</span>
                                    </div>
                                    <div className="row-caption">
                                        <h3 itemProp="name"><a title={item.Name} href="#" itemProp="url">{item.Name}</a></h3>
                                        <span className="row-chapter"><a href="/" title={item.Name}>{item.Name}</a></span>
                                    </div>
                                </div>
                            })
                        }
                        
                        
                        <div className="w3-center row-more"><a href="http://goctruyen.com/truyen-duoc-xem-nhieu-nhat/" title="Xem thêm truyện được xem nhiều">Xem Thêm<i className="fa fa-chevron-down" /></a></div>
                    </div>
                </div>
                {/*<div style="margin: 0 auto; margin-bottom: 10px; text-align: center;"><a href="https://xosodientu.com/kqxsmb-ket-qua-xo-so-mien-bac-s1.html" title="kqxsmb" target="_blank" rel="nofollow"><img src="http://goctruyen.com/qc/xs/kqxsmb-300x250.jpg" alt="kqxsmb"></a></div>*/}
                <div className="w3-col s12 m12 l12 sidebar-module sidebar-new">
                    <div className="sidebar-title"><h2>Truyện mới đăng</h2></div>
                    <div className="sidebar-content">
                        {
                            this.state.StoryHot.map(function (item) {
                                return <div className="row">
                                    <div className="w3-left row-thumbnail"><span className="w3-btn-floating icon-text">NEW</span></div>
                                    <div className="row-caption">
                                        <h3 itemProp="name"><a title={item.Name} href="#" itemProp="url">{item.Name}</a></h3>
                                        <span className="row-chapter"><a href="#" title={item.Name}>{item.Name}</a>, <a  href="#" title="Sắc">Sắc</a></span>
                                    </div>
                                </div>;
                            })
                        }
                        
                    </div>    		<div className="w3-center row-more"><a href="http://goctruyen.com/truyen-moi-dang/" title="Truyện mới đăng">Xem Thêm<i className="fa fa-chevron-down" /></a></div>
                </div>
            </div>
        </div>
    );
  }
}
