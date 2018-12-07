import React, { Component } from 'react';

export class Home extends Component {
    displayName = Home.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            StoryUpdate: []
        };
    }
    componentDidMount() {
        fetch("/Story/Search?ActionCmd.PageSize=16")
            .then(res => res.json())
            .then((result) => {
                console.log(result);
                this.setState({
                    isLoaded: true,
                    StoryUpdate: result.data.data
                });
                }
            );
    }
  render() {
    return (
        <div id="main" className="w3-col s12 m12 l8">
            <div className="main-module list-hot">
                <div className="w3-row main-title">
                    <h2><a title="Truyện đọc nhiều nhất" href="http://goctruyen.com/truyen-duoc-xem-nhieu-nhat/">Truyện đọc nhiều nhất<i className="fa fa-angle-right" /></a></h2>
                </div>
                <div className="w3-row main-content">
                    <div className="w3-col s12 m6 l6 story">
                        <div className="hot-story">
                            <div className="w3-right hot-thumbnail">
                                <a href="http://goctruyen.com/co-vo-hop-dong-bo-tron-cua-tong-giam-doc/" title="Cô Vợ Hợp Đồng Bỏ Trốn Của Tổng Giám Đốc">
                                    <span className="vipmobi1" /><img width={45} height={60} src="http://goctruyen.com/public/frontend/images/medium/covohopdongbotroncuatonggiamdocr88sTBcHzw.jpg" alt="Cô Vợ Hợp Đồng Bỏ Trốn Của Tổng Giám Đốc" />
                                </a>
                            </div>
                            <div className="hot-caption">
                                <h3><a href="http://goctruyen.com/co-vo-hop-dong-bo-tron-cua-tong-giam-doc/" title="Cô Vợ Hợp Đồng Bỏ Trốn Của Tổng Giám Đốc">Cô Vợ Hợp Đồng Bỏ Trốn Của Tổng Giám Đốc</a></h3>
                                <span>Tác giả: Niêm Hoa Phất Liễu</span>
                                <span>Thể loại: <a href="http://goctruyen.com/truyen-nguoc/" title="Truyện Ngược">Truyện Ngược</a></span>
                                <a className="w3-btn hot-button" href="http://goctruyen.com/co-vo-hop-dong-bo-tron-cua-tong-giam-doc/">Đọc Ngay<i className="fa fa-chevron-right" /></a>
                            </div>
                        </div>
                    </div>
                    <div className="w3-col s12 m6 l6 story">
                        <div className="hot-story">
                            <div className="w3-right hot-thumbnail">
                                <a href="http://goctruyen.com/vu-than-thien-ha/" title="Vũ Thần Thiên Hạ">
                                    <span className="vipmobi1" /><img width={45} height={60} src="http://goctruyen.com/public/frontend/images/medium/vuthanthienhaVZZzGzYCjJ.jpg" alt="Vũ Thần Thiên Hạ" />
                                </a>
                            </div>
                            <div className="hot-caption">
                                <h3><a href="http://goctruyen.com/vu-than-thien-ha/" title="Vũ Thần Thiên Hạ">Vũ Thần Thiên Hạ</a></h3>
                                <span>Tác giả: Vũ Phong</span>
                                <span>Thể loại: <a href="http://goctruyen.com/truyen-tien-hiep/" title="Truyện Tiên Hiệp">Truyện Tiên Hiệp</a></span>
                                <a className="w3-btn hot-button" href="http://goctruyen.com/vu-than-thien-ha/">Đọc Ngay<i className="fa fa-chevron-right" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="main-module list-update">
                <div className="w3-row main-title">
                    <h2><a href="http://goctruyen.com/truyen-dich-vip/" title="Truyện vip">Truyện VIP mới<i className="fa fa-angle-right" /></a></h2>
                </div>
                <div className="w3-row main-content">
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Tân Giới Danh Viện, Tổng Giám Đốc Yêu Vợ Bậc Nhất" href="http://goctruyen.com/tan-gioi-danh-vien-tong-giam-doc-yeu-vo-bac-nhat/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/tangioidanhvientonggiamdocyeuvobacnhatY573lX1k9L.jpg" alt="Truyện Tân Giới Danh Viện, Tổng Giám Đốc Yêu Vợ Bậc Nhất" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Tân Giới Danh Viện, Tổng Giám Đốc Yêu Vợ Bậc Nhất" href="http://goctruyen.com/tan-gioi-danh-vien-tong-giam-doc-yeu-vo-bac-nhat/" itemProp="url">Tân Giới Danh Viện, Tổng Giám Đốc Yêu Vợ Bậc Nhất</a></h3>
                            <p className="caption-chapter">Chương 50</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Mao Sơn Tróc Quỷ Nhân" href="http://goctruyen.com/mao-son-troc-quy-nhan/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/maosontrocquynhanRgfucIF6xQ.jpg" alt="Truyện Mao Sơn Tróc Quỷ Nhân" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Mao Sơn Tróc Quỷ Nhân" href="http://goctruyen.com/mao-son-troc-quy-nhan/" itemProp="url">Mao Sơn Tróc Quỷ Nhân</a></h3>
                            <p className="caption-chapter">Chương 2598</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Thí Hôn Lão Công, Cần Giúp Sức" href="http://goctruyen.com/thi-hon-lao-cong-can-giup-suc/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/thihonlaocongcangiupsuc3fvT3GoniB.jpg" alt="Truyện Thí Hôn Lão Công, Cần Giúp Sức" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Thí Hôn Lão Công, Cần Giúp Sức" href="http://goctruyen.com/thi-hon-lao-cong-can-giup-suc/" itemProp="url">Thí Hôn Lão Công, Cần Giúp Sức</a></h3>
                            <p className="caption-chapter">FULL</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Kiếm Phá Thương Khung" href="http://goctruyen.com/kiem-pha-thuong-khung/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/kiemphathuongkhungPiDMiXgE1v.jpg" alt="Truyện Kiếm Phá Thương Khung" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Kiếm Phá Thương Khung" href="http://goctruyen.com/kiem-pha-thuong-khung/" itemProp="url">Kiếm Phá Thương Khung</a></h3>
                            <p className="caption-chapter">Chương 441</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Vũ Trụ Trùm Phản Diện" href="http://goctruyen.com/vu-tru-trum-phan-dien/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/vutrutrumphandieneGlQlVXhCh.jpg" alt="Truyện Vũ Trụ Trùm Phản Diện" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Vũ Trụ Trùm Phản Diện" href="http://goctruyen.com/vu-tru-trum-phan-dien/" itemProp="url">Vũ Trụ Trùm Phản Diện</a></h3>
                            <p className="caption-chapter">Chương 840</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Thiên Đạo Đồ Thư Quán" href="http://goctruyen.com/thien-dao-do-thu-quan/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/thiendaodothuquanEgT4Q6AmuE.jpg" alt="Truyện Thiên Đạo Đồ Thư Quán" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Thiên Đạo Đồ Thư Quán" href="http://goctruyen.com/thien-dao-do-thu-quan/" itemProp="url">Thiên Đạo Đồ Thư Quán</a></h3>
                            <p className="caption-chapter">Chương 3058</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Vũ Thần Thiên Hạ" href="http://goctruyen.com/vu-than-thien-ha/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/vuthanthienhaVZZzGzYCjJ.jpg" alt="Truyện Vũ Thần Thiên Hạ" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Vũ Thần Thiên Hạ" href="http://goctruyen.com/vu-than-thien-ha/" itemProp="url">Vũ Thần Thiên Hạ</a></h3>
                            <p className="caption-chapter">Chương 4672</p>
                        </div>
                    </div>
                    <div className="w3-col s6 m3 l3 story" itemScope itemType="http://schema.org/Book">
                        <a className="w3-hover-opacity" title="Truyện Tuyệt Phẩm Thiên Y" href="http://goctruyen.com/tuyet-pham-thien-y/">
                            <span className="vip1" /><img className="story-thumbnail" src="http://goctruyen.com/public/frontend/images/medium/tuyetphamthienyGCzjTbHSRM.jpg" alt="Truyện Tuyệt Phẩm Thiên Y" />
                        </a>
                        <div className="story-caption">
                            <h3 itemProp="name"><a title="Tuyệt Phẩm Thiên Y" href="http://goctruyen.com/tuyet-pham-thien-y/" itemProp="url">Tuyệt Phẩm Thiên Y</a></h3>
                            <p className="caption-chapter">Chương 1230</p>
                        </div>
                    </div>
                </div>
            </div>
            <div className="main-module hotdate">
                <div className="w3-row main-title">
                    <h2>Truyện hot trong ngày<i className="fa fa-angle-right" /></h2>
                </div>
                <div className="w3-row w3-container">
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/choc-tuc-vo-yeu--mua-mot-tang-mot/" title="Chọc Tức Vợ Yêu - Mua Một Tặng Một" itemProp="url">Chọc Tức Vợ Yêu - Mua Một Tặng Một</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/bay-hon-nhan-vo-truoc-om-con-chay/" title="Bẫy Hôn Nhân: Vợ Trước Ôm Con Chạy" itemProp="url">Bẫy Hôn Nhân: Vợ Trước Ôm Con Chạy</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/co-vo-dang-yeu-cua-tong-tai/" title="Cô Vợ Đáng Yêu Của Tổng Tài" itemProp="url">Cô Vợ Đáng Yêu Của Tổng Tài</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/boss-hung-du--ong-xa-ket-hon-di/" title="Boss Hung Dữ - Ông Xã Kết Hôn Đi" itemProp="url">Boss Hung Dữ - Ông Xã Kết Hôn Đi</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/doc-ton-tam-gioi/" title="Độc Tôn Tam Giới" itemProp="url">Độc Tôn Tam Giới</a></h3>
                            <i className="iconfull" /><i className="iconvip" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-tien-hiep/" title="Truyện Tiên Hiệp">Tiên Hiệp</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/linh-vu-thien-ha/" title="Linh Vũ Thiên Hạ" itemProp="url">Linh Vũ Thiên Hạ</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-tien-hiep/" title="Truyện Tiên Hiệp">Tiên Hiệp</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/giam-doc-hang-ti-yeu-vo-tan-xuong/" title="Giám Đốc Hàng Tỉ Yêu Vợ Tận Xương" itemProp="url">Giám Đốc Hàng Tỉ Yêu Vợ Tận Xương</a></h3>
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>, <a itemProp="genre" href="http://goctruyen.com/truyen-sung/" title="Truyện Sủng">Sủng</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/ep-yeu-100-ngay/" title="Ép Yêu 100 Ngày" itemProp="url">Ép Yêu 100 Ngày</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>, <a itemProp="genre" href="http://goctruyen.com/truyen-sung/" title="Truyện Sủng">Sủng</a>, <a itemProp="genre" href="http://goctruyen.com/truyen-nguoc/" title="Truyện Ngược">Ngược</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/mot-thai-hai-bao-giam-doc-hang-ti-yeu-vo-tan-xuong/" title="Một Thai Hai Bảo: Giám Đốc Hàng Tỉ Yêu Vợ Tận Xương" itemProp="url">Một Thai Hai Bảo: Giám Đốc Hàng Tỉ Yêu Vợ Tận Xương</a></h3>
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                    <div className="row" itemScope itemType="http://schema.org/Book">
                        <div className="w3-col s12 m12 l7 w3-container">
                            <i className="fa fa-angle-right" />
                            <h3 itemProp="name"><a href="http://goctruyen.com/nguoi-tinh-nho-ben-canh-tong-giam-doc/" title="Người Tình Nhỏ Bên Cạnh Tổng Giám Đốc" itemProp="url">Người Tình Nhỏ Bên Cạnh Tổng Giám Đốc</a></h3>
                            <i className="iconfull" />
                        </div>
                        <div className="w3-col s12 m12 l5 w3-container">
                            <a itemProp="genre" href="http://goctruyen.com/truyen-ngon-tinh/" title="Truyện Ngôn Tình">Ngôn Tình</a>
                        </div>
                    </div>
                </div>
            </div>        <div className="main-module list-update">
                <div className="w3-row main-title">
                    <h2><a href="http://goctruyen.com/truyen-moi-dang/" title="Truyện mới">Truyện mới cập nhật<i className="fa fa-angle-right" /></a></h2>
                </div>
                <div className="w3-row main-content">
                    {
                        this.state.StoryUpdate.map((item) => {
                            return <div className="w3-col s6 m3 l3 story">
                                <a className="w3-hover-opacity" title={item.Name} href="#">
                                    <span className="vip0" />
                                    <img className="story-thumbnail" src={item.Image} alt={item.Name} />
                                </a>
                                <div className="story-caption">
                                    <h3 itemProp="name"><a title={item.Name} href="#">{item.Name}</a></h3>
                                    <p className="caption-chapter">{item.StatusName}</p>
                                </div>
                            </div>
                        })
                    }
                    
                </div>
                <div className="w3-center pagination">
                    <ul className="w3-pagination paging">
                        <li><a className="active" title="current-page">1</a></li>
                        <li><a title="page-2" href="http://goctruyen.com/all/2">2</a></li>
                        <li><a title="page-3" href="http://goctruyen.com/all/3">3</a></li>
                        <li><a title="page-4" href="http://goctruyen.com/all/4">4</a></li>
                        <li><a title="page-5" href="http://goctruyen.com/all/5">5</a></li>
                        <li><a title="page-791" href="http://goctruyen.com/all/791">Last »</a></li>
                    </ul>
                    <div className="w3-center pages">
                        <input type="text" id="page" name="page" size={5} className="w3-input pages-input" placeholder="Tới trang" />
                        <button className="w3-btn pages-button" id="changepage" name="changepage" onclick="gopage('http://goctruyen.com/all/', $('#page').val())"><svg fill="#fff" width={18} height={18} viewBox="1 2 18 18"><path d="M17.438 9l-8.438-8.438v5.063h-9v6.75h9v5.063z" /></svg></button>
                    </div>
                </div>
            </div>
        </div>
    );
  }
}
