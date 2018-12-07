import React, { Component } from 'react';

export class NavMenu extends Component {
  displayName = NavMenu.name
    constructor(props) {
        super(props);
        this.state = { Category : ["Tiên hiệp","Xuyên không"] };
    }
  render() {
    return (
        <div>
            <div id="header" className="w3-row">
                <div className="w3-row header-top">
                    <div className="w3-col s12 m3 l3 w3-hide-medium w3-hide-small logo">
                        <h1><a href="/" title="Đọc Truyện Online" className="logo"><img src="http://goctruyen.com/public/frontend/img/logo.png" alt="doc truyen" width={200} height={96} /></a></h1>
                    </div>
                    <div className="w3-col s12 l5 search-bar">
                        <form id="formsearch" autoComplete="off" name="formsearch" action="http://goctruyen.com/actionsearch" method="GET">
                            <input id="txtsearch" className="w3-input search-input" name="txtsearch" type="text" placeholder="Tìm kiếm truyện..." onkeyup="search()" required="required" /><button type="submit" name="go" id="btsubmit" className="w3-btn search-button"><svg fill="#999" width={18} height={18} viewBox="0 0 22 22"><path d="M17.442 15.318l-4.264-3.626c-0.441-0.397-0.912-0.579-1.293-0.561 1.006-1.179 1.614-2.708 1.614-4.38 0-3.728-3.022-6.75-6.75-6.75s-6.75 3.022-6.75 6.75 3.022 6.75 6.75 6.75c1.672 0 3.201-0.608 4.38-1.614-0.018 0.381 0.165 0.852 0.561 1.293l3.626 4.264c0.621 0.69 1.635 0.748 2.254 0.129s0.561-1.633-0.129-2.254zM6.75 11.25c-2.485 0-4.5-2.015-4.5-4.5s2.015-4.5 4.5-4.5 4.5 2.015 4.5 4.5-2.015 4.5-4.5 4.5z" /></svg></button>
                            <div id="zme-autocomplete-results" className="search-autocomplete" style={{ display: 'none' }} />
                        </form>
                    </div>
                    <div className="w3-col s12 m4 w3-hide-medium w3-hide-small l4 label">
                        <a className="w3-btn" href="/login/" title="Đăng Nhập" rel="nofollow">ĐĂNG NHẬP</a>
                    </div>
                </div>
                <div className="w3-row header-bottom">
                    <ul className="topnav" id="myTopnav">
                        <li><a title="Trang chủ" href="/"><svg fill="#fff" width={18} height={18} viewBox="0 0 24 24"><path d="M18 10.688l-3.375-3.375v-5.063h-2.25v2.813l-3.375-3.375-9 9v0.563h2.25v5.625h5.625v-3.375h2.25v3.375h5.625v-5.625h2.25z" /></svg></a></li>
                        {this.state.Category.map((item) => {
                            return <li><a href="#">{item}</a></li>;
                        })}
                        <li className="icon">
                            <a href="javascript:void(0);" style={{ fontSize: '15px' }} ><i className="fa fa-navicon" /></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    );
  }
}
