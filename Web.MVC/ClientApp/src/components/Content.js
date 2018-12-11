import React, { Component } from 'react';

export class Content extends Component {
    displayName = Content.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            Content: []
        };
    }
    componentDidMount() {
        var StoryId = this.props.match.params.StoryId;
        var ChapterId = this.props.match.params.ChapterId;
        fetch("/Config/GetContentStory?ActionCmd.StoryId="+StoryId+"&ActionCmd.ChapterId="+ChapterId)
            .then(res => res.json())
            .then((result) => {
                var data = result.data;
                this.setState({
                    isLoaded: true,
                    Content: data
                });
                }
            );
    }
  render() {
    return (
        <div className="w3-row container">
            
            <div id="reading" style={{ background: '#faf5eb url(http://goctruyen.com/public/frontend/img/bgread.png) 0 0 repeat' }}>
                <div className="content">
                    <div className="w3-center chapter-title">
                        <ul className="w3-ul">
                            <li>
                                <h1><a title={this.state.Content.StoryName} href={"/Story/" + this.state.Content.StoryId}>{this.state.Content.StoryName}</a></h1>
                            </li>
                            <li>
                                <input type="text" defaultValue={1} className="w3-center w3-round" id="chapselect" /> <span>/0</span> <button className="w3-blue w3-round" id="gochap">Go</button>
                            </li>
                            <li>
                                <h3>{this.state.Content.ChapterName}</h3>
                            </li>
                        </ul>
                        <div className="w3-center chapter-button">
                            <button className="w3-btn w3-grey w3-hover-blue" ><svg fill="#FFFFFF" height={17} viewBox="0 3 24 24" width={17}><path d="M0 0h24v24H0z" fill="none" /><path d="M19.43 12.98c.04-.32.07-.64.07-.98s-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.12-.22-.39-.3-.61-.22l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.23-.09-.49 0-.61.22l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98s.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.12.22.39.3.61.22l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.23.09.49 0 .61-.22l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zM12 15.5c-1.93 0-3.5-1.57-3.5-3.5s1.57-3.5 3.5-3.5 3.5 1.57 3.5 3.5-1.57 3.5-3.5 3.5z" /></svg></button><a className="w3-btn w3-blue w3-hover-grey nextchap" title="Chương 2: Đây không phải là mua bán." href="http://goctruyen.com/co-vo-hop-dong-bo-tron-cua-tong-giam-doc/chuong-2-day-khong-phai-la-mua-ban_1000209.html"><span className="w3-hide-small">Chương </span>Tiếp <svg fill="#FFFFFF" height={18} viewBox="0 -1.5 24 24" width={18}><path d="M17.438 9l-8.438-8.438v5.063h-9v6.75h9v5.063z" /></svg></a>          </div>
                        <div id="setting-drop" className="w3-hide w3-center setting-box">
                            <ul className="w3-ul w3-animate-opacity">
                                <li>Màu Nền: <select id="maunen"><option value="FFF">-Chọn-</option><option value="FFF">Mặc định</option><option value="F4F4F4">Xám nhạt</option><option value="E9EBEE">Xanh nhạt</option><option value="E1E4F2">Xanh đậm</option><option value="F4F4E4">Vàng nhạt</option><option value="EAE4D3">Màu sepia</option><option value="FAFAC8">Vàng đậm</option><option value="EFEFAB">Vàng ố</option><option value={262626}>Màu tối</option></select></li>
                                <li>Font chữ: <select id="fontfa"><option value="Palatino Linotype">-Chọn-</option><option value="Palatino Linotype">Mặc định</option><option value="Bookerly">Bookerly</option><option value="Segoe UI">Segoe UI</option><option value="Patrick Hand">Patrick Hand</option><option value="Times New Roman">Times New Roman</option><option value="Verdana">Verdana</option><option value="Tahoma">Tahoma</option><option value="Arial">Arial</option></select></li>
                                <li>Chiều cao dòng: <select id="fonthe"><option value={160}>-Chọn-</option><option value={160}>Mặc định</option><option value={100}>100%</option><option value={120}>120%</option><option value={140}>140%</option><option value={180}>180%</option><option value={200}>200%</option></select></li>
                                <li>Kích Cỡ Chữ: <select id="resizeText"><option value={22}>-Chọn-</option><option value={22}>Mặc định(22)</option><option value={16}>16</option><option value={18}>18</option><option value={20}>20</option><option value={22}>22</option><option value={24}>24</option><option value={26}>26</option><option value={28}>28</option><option value={30}>30</option><option value={32}>32</option><option value={34}>34</option><option value={36}>36</option><option value={38}>38</option></select></li>
                            </ul>
                        </div>
                    </div>
                    <div id="content" className="w3-justify chapter-content" dangerouslySetInnerHTML={{ __html: this.state.Content.Text }}>
                        
                    </div>
                    
                    <input type="hidden" name="storyid-hidden" id="storyid-hidden" defaultValue={15725} />
                    <input type="hidden" name="bookid-hidden" id="bookid-hidden" defaultValue={999983} />
                    <div className="w3-row w3-center chapter-footer">
                        <div className="chapter-button">
                            <button className="w3-btn w3-grey w3-hover-blue" id="loadListChap" ><svg fill="#FFFFFF" height={15} viewBox="0 4 24 24" width={15}><path d="M0 0h24v24H0z" fill="none" /><path d="M2 20h20v-4H2v4zm2-3h2v2H4v-2zM2 4v4h20V4H2zm4 3H4V5h2v2zm-4 7h20v-4H2v4zm2-3h2v2H4v-2z" /></svg></button><a className="w3-btn w3-blue w3-hover-grey nextchap" title="Chương 2: Đây không phải là mua bán." href="http://goctruyen.com/co-vo-hop-dong-bo-tron-cua-tong-giam-doc/chuong-2-day-khong-phai-la-mua-ban_1000209.html"><span className="w3-hide-small">Chương </span>Tiếp <svg fill="#FFFFFF" height={18} viewBox="0 -1.5 24 24" width={18}><path d="M17.438 9l-8.438-8.438v5.063h-9v6.75h9v5.063z" /></svg></a>			</div>
                        <button className="w3-amber w3-margin-bottom w3-text-white w3-border-0 w3-round-medium w3-padding-4" id="chaperror"><svg fill="#FFFFFF" height={16} viewBox="0 2 24 24" width={16}><path d="M0 0h24v24H0z" fill="none" /><path d="M1 21h22L12 2 1 21zm12-3h-2v-2h2v2zm0-4h-2v-4h2v4z" /></svg>Báo lỗi chương</button>
                        <button className="w3-amber w3-margin-bottom w3-text-white w3-border-0 w3-round-medium w3-padding-4" id="loadcm"><svg fill="#FFFFFF" width={18} height={18} viewBox="0 0 24 24"><path fill="none" d="M0 0h24v24H0V0z" /><path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 14H6l-2 2V4h16v12z" /></svg>Bình luận</button>
                        <div><em><i>Chú ý: mời bạn <a href="https://goctruyen.com/login/" title="đăng nhập" rel="nofollow"><b>đăng nhập</b></a> để tắt quảng cáo!</i></em></div>
                    </div>
                </div>
            </div>
            
        </div>
    );
  }
}
