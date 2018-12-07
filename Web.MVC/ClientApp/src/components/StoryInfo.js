import React, { Component } from 'react';

export class StoryInfo extends Component {
    displayName = StoryInfo.name
    constructor(props) {
        super(props);
        this.state = {
            isLoaded: false,
            StoryInfo: []
        };
    }
    componentDidMount() {
        var id = this.props.match.params.StoryId;
        fetch('/Story/GetById?ActionCmd.StoryId='+id)
            .then(res => res.json())
            .then((result) => {
                this.setState({
                    isLoaded: true,
                    StoryInfo: result.data
                });
                console.log(this.state.StoryInfo.story.name);
            }
            );
    }
  render() {
      return (

        <div id="main" className="w3-col s12 m12 l8">
        <div className="sitemap">
          <div itemScope itemType="http://data-vocabulary.org/Breadcrumb">
            <a href="http://goctruyen.com/" itemProp="url">
              <span itemProp="title"><svg fill="#999" width={18} height={18} viewBox="0 0 24 24"><path d="M18 10.688l-3.375-3.375v-5.063h-2.25v2.813l-3.375-3.375-9 9v0.563h2.25v5.625h5.625v-3.375h2.25v3.375h5.625v-5.625h2.25z" /></svg>Trang chủ</span>
            </a>
            <svg fill="#999" height={12} viewBox="0 3 20 20" width={12}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
          </div>
          <div itemScope itemType="http://data-vocabulary.org/Breadcrumb">
            <a href="http://goctruyen.com/truyen-tien-hiep/" itemProp="url"><span itemProp="title">Truyện Tiên Hiệp</span></a>                <svg fill="#999" height={12} viewBox="0 3 20 20" width={12}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
          </div>
          <div itemScope itemType="http://data-vocabulary.org/Breadcrumb">
            <a href="http://goctruyen.com/vu-tru-trum-phan-dien/" itemProp="url" className="active">
              <span itemProp="title">Vũ Trụ Trùm Phản Diện</span>
            </a> 
          </div>
        </div>
        <div className="main-module detail" itemScope itemType="http://schema.org/Book">
          <div className="w3-row main-content">
            <div className="w3-col s12 m3 l3 w3-center detail-thumbnail">
              <span className="vip1" /><img width={220} height={305} alt="Vũ Trụ Trùm Phản Diện" src="http://goctruyen.com/public/frontend/images/vutrutrumphandieneGlQlVXhCh.jpg" itemProp="image" />
              <div className="detail-social">
                Like ngay: <div className="fb-like fb_iframe_widget" data-href="http://goctruyen.com/vu-tru-trum-phan-dien/" data-share="true" data-show-faces="false" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=395702927437133&container_width=136&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false"><span style={{verticalAlign: 'bottom', width: '122px', height: '20px'}}><iframe name="ff31d1d33eec24" width="1000px" height="1000px" frameBorder={0} allowTransparency="true" allowFullScreen="true" scrolling="no" allow="encrypted-media" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/v3.0/plugins/like.php?app_id=395702927437133&channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2F7LloFuHvA7I.js%3Fversion%3D43%23cb%3Df1457f3cc6feea4%26domain%3Dgoctruyen.com%26origin%3Dhttp%253A%252F%252Fgoctruyen.com%252Ff772807927f37%26relation%3Dparent.parent&container_width=136&href=http%3A%2F%2Fgoctruyen.com%2Fvu-tru-trum-phan-dien%2F&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false" style={{border: 'none', visibility: 'visible', width: '122px', height: '20px'}} className /></span></div>
              </div>
              <input type="hidden" id="hiddenID" defaultValue={22615} />
              <p style={{display: 'none'}}>Sat, 17 Nov 2018 21:46:33 +0700</p>
            </div>
            <div className="w3-col s12 m9 l9 detail-content">
                          <h1>
                              <a title= href="http://goctruyen.com/vu-tru-trum-phan-dien/">
                              </a>
                              {this.state.StoryInfo.story.name}
                          </h1>
              
              <div className="detail-info">
                <ul className="w3-ul">
                  <li>Tác giả:<h2 itemProp="author"><span>Nhất Nhị 01</span></h2></li>
                  <li>Thể loại:<span><a title="Truyện Tiên Hiệp" href="http://goctruyen.com/truyen-tien-hiep/">Truyện Tiên Hiệp</a></span></li>
                  <li>Nguồn:<span>goctruyen.com</span></li>
                  <li>Tình trạng:<span>Đang cập nhật</span></li>
                  <li>Lượt đọc:<span>10612</span></li>
                </ul>
              </div>
              <div className="w3-center detail-button">
                <a className="w3-btn w3-round" >Giới thiệu truyện<svg fill="#FFFFFF" height={18} viewBox="0 0 18 22" width={18}><path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" /><path d="M0-.75h24v24H0z" fill="none" /></svg></a>
                <a className="w3-btn w3-round" title="Đọc truyện" href="http://goctruyen.com/vu-tru-trum-phan-dien/he-thong-trum-phan-dien_1442890.html">Đọc truyện</a>                        {/*<a class="w3-btn w3-round" id="storyfollow"><i class="fa fa-rss"></i>Theo dõi</a>*/}
              </div>
              <div id="summary" className="w3-justify w3-animate-opacity w3-hide detail-summary" itemProp="description">
                Không cần giới thiệu quá nhiều, chỉ đưa lên vài trích dẫn trong hàng ngàn hàng vạn tình tiết cười chảy nước mắt, bảo đảm hay không cần chỉnh.<br />***<br />- Leng keng, hệ thống Trùm Phản Diện khởi động thành công, bắt đầu cho gói quà tân thủ. <br /><br />Một âm thanh máy móc vang lên ở trong đầu Vương Hạo.<br /><br />- Hệ thống? Gói quà Tân thủ? <br /><br />Vương Hạo đầu tiên là sững sờ, sau đó bị kinh hỉ thay thế, lại là hệ thống, đây chính là bàn tay vàng để người xuyên việt ngưu bức a.<br /><br />Hắn quả nhiên là được lão thiên gia sủng hạnh, phi, nam nhân sủng ái, đồng thời nhất định là nam nhân đứng ở đỉnh phong của vũ trụ.<br /><br />- Không đúng, hệ thống này tên gọi là cái gì? Hệ thống Trùm Phản Diện?<br /><br />Vương Hạo lấy lại tinh thần, có dự cảm không tốt.<br />***<br />Vương Thiên Dật vẫy tay, ánh mắt nhìn về phía Vương Hạo tràn đầy áy náy.<br /><br />Vừa rồi thật sự là hắn có chút hoài nghi Vương Hạo hạ độc, nhưng sự thật chứng minh, hắn trách oan Vương Hạo.<br /><br />- Leng keng, chúc mừng kí chủ hạ độc hại cha ruột, thu hoạch được 50 vạn điểm phản diện.<br /><br />Vương Hạo trợn trắng mắt, hệ thống này thực sự quá không đứng đắn, mặc dù trong dược tề kia có chút độc dược, nhưng là lấy độc trị độc, thanh lý tụ huyết trong cơ thể, nơi nào là hạ độc mưu hại cha ruột?<br /><br />***<br /><br />Vương Hạo chắp tay hành lễ nói:<br /><br />- A Di Đà Phật, nữ thí chủ rốt cục tỉnh, căn cứ kinh nghiệm nhiều năm của bần tăng, sở dĩ nữ thí chủ hôn mê, sau khi tỉnh lại sắc mặt tái nhợt vô lực, thân thể bị trọng thương không phải nguyên nhân chủ yếu, mà là ở giữa hai chân có một vết thương cũ, bề rộng chừng hai ngón tay, mỗi tháng máu chảy một lần, bần tăng đã từng đọc qua cổ tịch biết được, đây là thời điểm năm đó Nữ Oa tạo ra con người lưu lại, cần dùng vật cực dương trị liệu, mà trên người bần tăng vừa vặn có vật này, nếu nữ thí chủ không chê, bần tăng nguyện tự mình trị liệu giúp nữ thí chủ. . .<br /><br />***<br />Vương Hạo đột nhiên quỷ khóc sói gào dậy.<br /><br />- Mụ mụ thân ái, con trai rốt cục tìm thấy người, người cần phải làm chủ cho con a! Cha từ nhỏ bỏ lại con chạy theo những nữ nhân khác, hiện tại hắn không có tiền, liền đòi tiền con, không cho còn đánh con. . .<br /><br />Trong nháy mắt Vương Thiên Dật đen mặt, có loại con này thật sự là lão thiên gia đui mù a!<br />Mọi người ở đây cho Vương Thiên Dật một cái ánh mắt đồng tình, nhà có con trai cực phẩm như thế, thật sự là bi ai của nhân sinh!<br /><br />***<br /><br />- Sợ cái rắm!<br /><br />Vương Hạo nhếch miệng.<br /><br />- Lão tử là nam nhân có được kim tệ phục sinh, sau khi chết lập tức chém chết Thiên Đạo.<br /><br />- Kí chủ không có nhìn ghi chú của kim tệ phục sinh sao?<br /><br />Hệ Thống im lặng, nhắc nhở nói: <br /><br />- Trên đó viết sau khi chết thần cản giết thần, phật cản giết phật, nhưng Thiên Đạo cao cấp hơn Thần Phật nhiều nha.<br /><br />Vương Hạo trợn tròn mắt, sững sờ hỏi: <br /><br />- Vậy hiện tại ta xin lỗi còn kịp không?<br /><br /><br /><br />***<br /><br />- Oa oa. . .<br /><br />Đột nhiên Vương Hạo bi thống khóc lên.<br /><br />- Ta từ nhỏ bị Nhân loại bắt đi, bọn hắn tra tấn ta, chà đạp ta, ngược đãi ta, còn cưỡng ép chỉnh dung cho ta, nếu không ta thề sống chết bảo hộ đôi sừng trâu này, ta thật không có mặt mũi trở về. . .<br /><br />- Rống rống. . . Nhân loại đáng chết! !<br /><br />Đám người Ngưu Đầu nhân liên tục gầm thét, huynh đệ nhà mình bị Nhân loại kéo đi chỉnh dung, đầu trâu nguyên bản anh tuấn bị chỉnh thành tiểu bạch kiểm của Nhân loại, loại chuyện này làm sao có thể không giận?<br /><br /><br />***<br /><br />Đám người Lăng Tiêu trợn trắng mắt, bọn hắn rất muốn có trách nhiệm nói cho những Đại Văn Hào này, Vương Hạo là triệt để không cứu nổi, đợi lát nữa bọn hắn khẳng định ngay cả tâm tư giết Vương Hạo cũng có.<br />Phải biết, chờ bọn hắn dễ chịu tắm suối nước nóng, Táng Thiên dược tề sẽ bị đổ vào, để bọn hắn trúng độc.<br /><br />Sau đó sẽ có hơn mười người bị tiểu thư bồi rượu mang đi luân phiên làm việc, để bọn hắn đứng dậy không nổi.<br /><br />Đồng thời, ở chung quanh suối nước nóng, còn có mấy chục camera lỗ kim đã chuẩn bị sẵn sàng, chỉ đợi trò hay trình diễn, sau đó ghi chép lại hết thảy. . .<br /><br /><br /><br />***<br /><br />Vương Hạo đắc ý lại kiêu ngạo nói:<br /><br />- Ta ba tuổi xem Hoàng thúc; bốn tuổi xem phim nhựa; năm tuổi nhìn lén tiểu tỷ tỷ nhà hàng xóm tắm rửa; sáu tuổi dùng kẹo que lừa gạt nụ hôn đầu tiên của tiểu nữ sinh nhà trẻ; bảy tuổi nhẫn nhịn không được độc thân tịch mịch, uy bức lợi dụ tìm được một bạn gái; tám tuổi gặp được thế ngoại cao nhân truyền thụ thần công; chín tuổi ***; mười tuổi du tẩu Diệu Thiên Liên Bang, mở ra nhân sinh liệp diễm; mười một tuổi làm công tác dâm tặc, hàng đêm chuồn vào phòng nạy khóa làm tân lang; mười hai tuổi thần công đại thành, chỉ dựa vào một nụ cười thông đồng vô số muội tử; mười ba tuổi bị vô số muội tử điên cuồng theo đuổi, bị ép phải xuất gia.<br /><br />Main chuyên môn hố người, đặc biệt là Thiên Đạo chi tử để lấy điểm phải diện, có chỗ dựa cứng chuyên chùi đít cho main. IQ tác khá cao, khó lường trước, có những câu hay để đời như: Ngực nhỏ bình thiên hạ, ngực lớn tụ nhân tâm, hay bí quyết cua gái là không muốn mặt, không muốn mặt và không muốn mặt…<br /><br />Các cấp cảnh giới:<br /><br />1: Võ Đồ<br />2: Võ Sư<br />3: Võ Tông<br />4: Võ Vương <br />5: Võ Đế<br />6: Võ Thánh <br />7: Võ Tôn<br />8: Võ Thần<br />9: Thiên Vị<br />10: Thần Vị<br />11: Chúng Thần<br />12: Chí Tôn<br />…                  </div>
            </div>
          </div>
        </div>
        <div className="main-module list-chapter">
          <div className="w3-row list-chapter-title">
            <h2>5 Chương mới cập nhật truyện Vũ Trụ Trùm Phản Diện</h2>
          </div>
          <div className="w3-row list-chapter-content">
            <ul className="w3-ul">
              <li>
                <svg height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
                <a className="chaptername0" title="Hầu tử mời tới đùa so với" href="http://goctruyen.com/vu-tru-trum-phan-dien/hau-tu-moi-toi-dua-so-voi_1452793.html">840. Chương 840: Hầu tử mời tới đùa so với</a>
                <span className="w3-right w3-hide-small">30/11/2018</span>
              </li>
              <li>
                <svg height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
                <a className="chaptername0" title="Chui chỗ trống" href="http://goctruyen.com/vu-tru-trum-phan-dien/chui-cho-trong_1452792.html">839. Chương 839: Chui chỗ trống</a>
                <span className="w3-right w3-hide-small">30/11/2018</span>
              </li>
              <li>
                <svg height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
                <a className="chaptername0" title="Cung kính không bằng tuân lệnh" href="http://goctruyen.com/vu-tru-trum-phan-dien/cung-kinh-khong-bang-tuan-lenh_1452791.html">838. Chương 838: Cung kính không bằng tuân lệnh</a>
                <span className="w3-right w3-hide-small">30/11/2018</span>
              </li>
              <li>
                <svg height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
                <a className="chaptername0" title="A… thoải mái, thoải mái!" href="http://goctruyen.com/vu-tru-trum-phan-dien/a-thoai-mai-thoai-mai_1452790.html">837. Chương 837: A… thoải mái, thoải mái!</a>
                <span className="w3-right w3-hide-small">30/11/2018</span>
              </li>
              <li>
                <svg height={20} viewBox="0 2 24 24" width={20}><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z" /><path d="M0-.25h24v24H0z" fill="none" /></svg>
                <a className="chaptername0" title="A… Cứu mạng" href="http://goctruyen.com/vu-tru-trum-phan-dien/a-cuu-mang_1452789.html">836. Chương 836: A… Cứu mạng</a>
                <span className="w3-right w3-hide-small">30/11/2018</span>
              </li>
            </ul>
          </div>
        </div>
        <div className="main-module list-chapter">
          <div className="w3-row list-chapter-title">
            <h2>Danh sách chương Vũ Trụ Trùm Phản Diện</h2>
          </div>
          <input type="hidden" defaultValue={22615} />
          <div className="w3-row list-chapter-content">
            <ul className="w3-ul">
              <li><a className="chaptername1" title="Hệ thống Trùm Phản Diện" href="http://goctruyen.com/vu-tru-trum-phan-dien/he-thong-trum-phan-dien_1442890.html">1. Chương 1: Hệ thống Trùm Phản Diện</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Không có lý do nào phản bác" href="http://goctruyen.com/vu-tru-trum-phan-dien/khong-co-ly-do-nao-phan-bac_1442891.html">2. Chương 2: Không có lý do nào phản bác</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Nụ cười dâm trùng" href="http://goctruyen.com/vu-tru-trum-phan-dien/nu-cuoi-dam-trung_1442892.html">3. Chương 3: Nụ cười dâm trùng</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Tổn thương lẫn nhau, ai sợ ai chứ!" href="http://goctruyen.com/vu-tru-trum-phan-dien/ton-thuong-lan-nhau-ai-so-ai-chu_1442893.html">4. Chương 4: Tổn thương lẫn nhau, ai sợ ai chứ!</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Không tôn trọng nữ thần" href="http://goctruyen.com/vu-tru-trum-phan-dien/khong-ton-trong-nu-than_1442894.html">5. Chương 5: Không tôn trọng nữ thần</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Nam tử cặn bã trong cặn bã." href="http://goctruyen.com/vu-tru-trum-phan-dien/nam-tu-can-ba-trong-can-ba_1442895.html">6. Chương 6: Nam tử cặn bã trong cặn bã.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Hai loại người khâm phục nhất." href="http://goctruyen.com/vu-tru-trum-phan-dien/hai-loai-nguoi-kham-phuc-nhat_1442896.html">7. Chương 7: Hai loại người khâm phục nhất.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Bàn Tay Ma Thuật." href="http://goctruyen.com/vu-tru-trum-phan-dien/ban-tay-ma-thuat_1442897.html">8. Chương 8: Bàn Tay Ma Thuật.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Đập hỏng đầu rồi." href="http://goctruyen.com/vu-tru-trum-phan-dien/dap-hong-dau-roi_1442898.html">9. Chương 9: Đập hỏng đầu rồi.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Tô Mộc." href="http://goctruyen.com/vu-tru-trum-phan-dien/to-moc_1442899.html">10. Chương 10: Tô Mộc.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Đánh chết nam nhân cặn bã Vương Hạo" href="http://goctruyen.com/vu-tru-trum-phan-dien/danh-chet-nam-nhan-can-ba-vuong-hao_1442900.html">11. Chương 11: Đánh chết nam nhân cặn bã Vương Hạo</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Nam tử đê tiện nhất!" href="http://goctruyen.com/vu-tru-trum-phan-dien/nam-tu-de-tien-nhat_1442901.html">12. Chương 12: Nam tử đê tiện nhất!</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Oán hận trọng tài" href="http://goctruyen.com/vu-tru-trum-phan-dien/oan-han-trong-tai_1442902.html">13. Chương 13: Oán hận trọng tài</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Ta lo lắng hắn sẽ quan báo thù tư" href="http://goctruyen.com/vu-tru-trum-phan-dien/ta-lo-lang-han-se-quan-bao-thu-tu_1442903.html">14. Chương 14: Ta lo lắng hắn sẽ quan báo thù tư</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Tuyệt đối có nội tình đen tối" href="http://goctruyen.com/vu-tru-trum-phan-dien/tuyet-doi-co-noi-tinh-den-toi_1442904.html">15. Chương 15: Tuyệt đối có nội tình đen tối</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Lần Sau Nhất Định Phải Chú Ý." href="http://goctruyen.com/vu-tru-trum-phan-dien/lan-sau-nhat-dinh-phai-chu-y_1442905.html">16. Chương 16: Lần Sau Nhất Định Phải Chú Ý.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Đá thuộc tính." href="http://goctruyen.com/vu-tru-trum-phan-dien/da-thuoc-tinh_1442906.html">17. Chương 17: Đá thuộc tính.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Áo Ẩn Thân." href="http://goctruyen.com/vu-tru-trum-phan-dien/ao-an-than_1442907.html">18. Chương 18: Áo Ẩn Thân.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Trả Lại Bầu Trời Trong Xanh Trường THPT Số 11." href="http://goctruyen.com/vu-tru-trum-phan-dien/tra-lai-bau-troi-trong-xanh-truong-thpt-so-11_1442908.html">19. Chương 19: Trả Lại Bầu Trời Trong Xanh Trường THPT Số 11.</a><span className="w3-right w3-hide-small">17/11/2018</span></li><li><a className="chaptername1" title="Cả Bộ Áo Lót." href="http://goctruyen.com/vu-tru-trum-phan-dien/ca-bo-ao-lot_1442909.html">20. Chương 20: Cả Bộ Áo Lót.</a><span className="w3-right w3-hide-small">17/11/2018</span></li>  </ul>
          </div>
          <div className="w3-center pagination">
            <ul className="w3-pagination paging">
              <li><a className="active" title="current-page">1</a></li><li><a title="page-2" href="http://goctruyen.com/vu-tru-trum-phan-dien/2/">2</a></li><li><a title="page-3" href="http://goctruyen.com/vu-tru-trum-phan-dien/3/">3</a></li><li><a title="page-4" href="http://goctruyen.com/vu-tru-trum-phan-dien/4/">4</a></li><li><a title="page-5" href="http://goctruyen.com/vu-tru-trum-phan-dien/5/">5</a></li><li><a title="page-42" href="http://goctruyen.com/vu-tru-trum-phan-dien/42/">Last 42<svg width={14} height={14} viewBox="0 2 18 18"><path d="M9 15.188v-5.625l-5.625 5.625v-12.375l5.625 5.625v-5.625l6.188 6.188z" /></svg></a></li>  </ul>
            <input type="hidden" id="hdlpage" name="hdlpage" defaultValue={42} />    <div className="w3-center pages">
              <input type="text" id="page" name="page" size={5} className="w3-input pages-input" placeholder="Tới trang" />
              <button className="w3-btn pages-button" id="changepage" name="changepage" onclick="gopage('http://goctruyen.com/vu-tru-trum-phan-dien/', $('#page').val())"><svg fill="#fff" width={18} height={18} viewBox="1 2 18 18"><path d="M17.438 9l-8.438-8.438v5.063h-9v6.75h9v5.063z" /></svg></button>
            </div>
          </div>      </div>
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
