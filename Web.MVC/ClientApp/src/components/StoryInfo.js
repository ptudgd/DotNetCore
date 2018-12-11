import React, { Component } from 'react';

export class StoryInfo extends Component {
    displayName = StoryInfo.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            Story: [],
            Tag: [],
            Chapter:[]
        };
    }
    componentDidMount() {
        var id = this.props.match.params.StoryId;
        fetch('/Config/StoryInfo?ActionCmd.StoryId='+id)
            .then(res => res.json())
            .then((result) => {
                var data = result.data;
                this.setState({
                    isLoaded: true,
                    Story: data.story,
                    Tag: data.tag,
                    Chapter: data.chapter
                });
                console.log(this.state);
            }
            );
    }
  render() {
      return (

        <div id="main" className="w3-col s12 m12 l8">
        <div className="sitemap">
          <div>
            <a href="/">
              <span><svg fill="#999" width={18} height={18} viewBox="0 0 24 24"><path d="M18 10.688l-3.375-3.375v-5.063h-2.25v2.813l-3.375-3.375-9 9v0.563h2.25v5.625h5.625v-3.375h2.25v3.375h5.625v-5.625h2.25z" /></svg>Trang chủ</span>
            </a>
            <svg fill="#999" height={12} viewBox="0 3 20 20" width={12}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
          </div>
          <div>
                      <a href={"/Story/" + this.state.Story.StoryId} className="active">
                          <span itemProp="title">{this.state.Story.Name}</span>
            </a> 
          </div>
        </div>
        <div className="main-module detail">
          <div className="w3-row main-content">
            <div className="w3-col s12 m3 l3 w3-center detail-thumbnail">
                <img width={220} height={305} alt={this.state.Story.Name} src={this.state.Story.Image} />
              <div className="detail-social">
                Like ngay: <div className="fb-like fb_iframe_widget" data-href="http://goctruyen.com/vu-tru-trum-phan-dien/" data-share="true" data-show-faces="false" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=395702927437133&container_width=136&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false"><span style={{verticalAlign: 'bottom', width: '122px', height: '20px'}}><iframe name="ff31d1d33eec24" width="1000px" height="1000px" frameBorder={0} allowTransparency="true" allowFullScreen="true" scrolling="no" allow="encrypted-media" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/v3.0/plugins/like.php?app_id=395702927437133&channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2F7LloFuHvA7I.js%3Fversion%3D43%23cb%3Df1457f3cc6feea4%26domain%3Dgoctruyen.com%26origin%3Dhttp%253A%252F%252Fgoctruyen.com%252Ff772807927f37%26relation%3Dparent.parent&container_width=136&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false" style={{border: 'none', visibility: 'visible', width: '122px', height: '20px'}} className /></span></div>
              </div>
              <input type="hidden" id="hiddenID" defaultValue={22615} />
              <p style={{display: 'none'}}>Sat, 17 Nov 2018 21:46:33 +0700</p>
            </div>
            <div className="w3-col s12 m9 l9 detail-content">
                          <h1>
                              <a title="" href={"/Story/" + this.state.Story.StoryId}>
                              </a>
                              {this.state.Story.Name}
                          </h1>
              
              <div className="detail-info">
                <ul className="w3-ul">
                  <li>Tác giả:<h2><span>Đang cập nhật</span></h2></li>
                                  <li>Thể loại:<span>
                                      {
                                          this.state.Tag.map((item, index) => {
                                              return <a key={index} title={item.Name} href={"/Category/" + item.CategoryId}>{item.Name +", "}</a>
                                        })
                                          }

                                  </span></li>
                  <li>Nguồn:<span>Đang cập nhật</span></li>
                                  <li>Tình trạng:<span>{this.state.Story.StatusName}</span></li>
                                  <li>Lượt đọc:<span>{this.state.Story.View}</span></li>
                </ul>
              </div>
              <div className="w3-center detail-button">
                <a className="w3-btn w3-round" >Giới thiệu truyện<svg fill="#FFFFFF" height={18} viewBox="0 0 18 22" width={18}><path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" /><path d="M0-.75h24v24H0z" fill="none" /></svg></a>
                <a className="w3-btn w3-round" title="Đọc truyện" href="http://goctruyen.com/vu-tru-trum-phan-dien/he-thong-trum-phan-dien_1442890.html">Đọc truyện</a>                        {/*<a class="w3-btn w3-round" id="storyfollow"><i class="fa fa-rss"></i>Theo dõi</a>*/}
              </div>
              <div id="summary" className="w3-justify w3-animate-opacity w3-show detail-summary">
                              <div className="content" dangerouslySetInnerHTML={{ __html: this.state.Story.Decription }}></div>
            </div>
            </div>
          </div>
        </div>
        
        <div className="main-module list-chapter">
          <div className="w3-row list-chapter-title">
                      <h2>Danh sách chương: {this.state.Story.Name}</h2>
          </div>
          <div className="w3-row list-chapter-content">
                      <ul className="w3-ul">
                          {
                              this.state.Chapter.map((item, index) => {
                                  return <li key= { index }><a  className="chaptername1" title={item.Name} href={"/Story/" + this.state.Story.StoryId + "/" + item.ChapterId} >
                                      {index + 1}. Chương {index + 1}: {item.Name}
                                      </a>
                                      <span className="w3-right w3-hide-small">{item.WriterDate}</span></li>
                              })
                          }
                <li>
                </li>
            </ul>
          </div>
          
              </div>
        <div className="comments">
          <div className="main-module comment-member">
            <div className="w3-row main-title"><p>Ý KIẾN BẠN ĐỌC</p></div>
            <div className="w3-row comment-content">
              <a className="w3-btn w3-blue w3-border w3-round-large w3-text-white" href="https://goctruyen.com/login/" title="Đăng nhập" rel="nofollow">Đăng nhập để bình luận</a>
              <input type="hidden" id="storyid" defaultValue={22615} />
              <input type="hidden" id="commentpage" defaultValue={1} />
              <div id="comment-list">
              </div>
              <button id="commentload" className="w3-btn-block w3-round comment-more">Xem thêm</button>
            </div>
          </div> 
          <div className="main-module comment-fb">
            <div className="w3-row main-title"><p>BÌNH LUẬN FACEBOOK</p></div>
            <div className="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop" data-href="http://goctruyen.com/vu-tru-trum-phan-dien/" data-numposts={5} data-width="auto" data-colorscheme="light" data-order-by="reverse_time" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=395702927437133&color_scheme=light&container_width=670&height=100&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&locale=vi_VN&numposts=5&order_by=reverse_time&sdk=joey&version=v3.0" style={{width: '100%'}}><span style={{verticalAlign: 'bottom', width: '100%', height: '178px'}}><iframe name="f2b15e16d2f29f8" width="1000px" height="100px" frameBorder={0} allowTransparency="true" allowFullScreen="true" scrolling="no" allow="encrypted-media" title="fb:comments Facebook Social Plugin" src="https://www.facebook.com/v3.0/plugins/comments.php?app_id=395702927437133&channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2F7LloFuHvA7I.js%3Fversion%3D43%23cb%3Df10724f16a4ba84%26domain%3Dgoctruyen.com%26origin%3Dhttp%253A%252F%252Fgoctruyen.com%252Ff772807927f37%26relation%3Dparent.parent&color_scheme=light&container_width=670&height=100&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&locale=vi_VN&numposts=5&order_by=reverse_time&sdk=joey&version=v3.0" style={{border: 'none', visibility: 'visible', width: '100%', height: '178px'}} className /></span></div>
          </div>
        </div>     
      </div>
    );
  }
}
