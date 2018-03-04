
import UIKit
import Material
import Graph

extension UIImage {
  public class func load(contentsOfFile name: String, ofType type: String) -> UIImage? {
    return UIImage(contentsOfFile: Bundle.main.path(forResource: name, ofType: type)!)
  }
}

struct SampleData {
  public static func createSampleData() {
    let graph = Graph()
    graph.clear()

    let c1 = Entity(type: "Category")
    c1["name"] = "Chụp ảnh màn hình"

    let a1 = Entity(type: "Article")
    a1["title"] = "Chụp ảnh màn hình"
    a1["detail"] = "Chụp ảnh màn hình Anroid, iOS"
    a1["photo"] = "https://lh3.googleusercontent.com/GXw9CVXP7euaMe7eAZD323t9w7iy5xHlNtpl3Kt3y4nc5d6RbgmJRvhoXgf1hJb2C62NYMalXC4y"
    a1["overview"] = "Chụp màn hình là một tính năng chia sẻ thông tin hữu ích, cần thiết một cách nhanh gọn."
    a1["content"] = """
    ### Chụp ảnh màn hình điện thoại.
    #### Máy chạy hệ điều hành Android.
    Với hầu hết các máy android (Nokia, Sony, LG, một số máy cao cấp của Samsung không có phím home cứng...) ta chụp màn hình bằng cách ấn đồng thời phím nguồn và phím giảm âm lượng.
    Với một số dòng máy khác (Samsung, HTC,...) ta chụp màn hình bằng cách ấn đồng thời phím nguồn và phím Home hoặc có thể tìm thấy nút chụp màn hình trên thanh thông báo của máy.
    ![](https://lh3.googleusercontent.com/GXw9CVXP7euaMe7eAZD323t9w7iy5xHlNtpl3Kt3y4nc5d6RbgmJRvhoXgf1hJb2C62NYMalXC4y)

    Một số dòng máy của Xiaomi, Oppo,... cho phép ta chụp màn hình bằng cách vuốt ba ngón tay lên màn hình.
    ![](https://lh3.googleusercontent.com/vKiNmvXRdE7pdx4zIDaqK3Wql-eKbaxLCuZGElq9cjMMdd1a2r1K49JLtg3lF1rb9hbEP-h4Zwr3)

    Ngoài ra, với các máy Samsung Galaxy Note ta có chụp màn hình và ghi chú lên ảnh như sau:
    ![](https://lh3.googleusercontent.com/HTq-kVn65qyZ6qk-z-GIMGU06Qgof8SGxkoYc0ato5J38hHA5ClFum7eckrdobkiFuJUh9TRiksG)

    #### Máy chạy hệ điều hành iOS
    Thông thường, với các máy iOS, ta có 2 cách chụp màn hình như sau:
    1. Ấn đồng thời phím nguồn hoặc phím home của máy.
    2. Sử dụng phím home ảo của máy như sau:
    ![](https://lh3.googleusercontent.com/eZF9f090yrA1vBuQgAq54OJ9xShHPXVMgQt-y9_A9dNw2ejCBBiOU70gYHHfUzJcpey_Q4CIEP3G)

    Ngoài ra, với iPhone X ta chụp màn hình bằng cách giữ đồng thời phím nguồn và tăng âm lượng trong khoảng 3 giây.
    """
    a1.is(relationship: "Post").in(object: c1)

    let a2 = Entity(type: "Article")
    a2["title"] = "Xem số điện thoại đang sử dụng"
    a2["detail"] = "Xem số điện thoại đang sử dụng"
    a2["photo"] = "https://lh3.googleusercontent.com/TvfWXc7O66LG_zc8cbphdZ-ZAOEFZXDkjOATYcXmwZUltmBbcO82h-f-x9LyBh2sEykgdI_dZJsM"
    a2["overview"] = "Đây là một số cách xem số điện thoại mà bạn đang sử dụng đơn giản mà không phải gọi tổng đài hay gọi sang máy khác và có thể dùng được với cả những máy phổ thông không có kết nối mạng."
    a2["content"] = """
    ### Cách xem số điện thoại đang sử dụng trong máy.
    Đây là một số cách xem số điện thoại mà bạn đang sử dụng đơn giản mà không phải gọi tổng đài hay gọi sang máy khác và có thể dùng được với cả những máy phổ thông không có kết nối mạng. Ngoài ra, bạn có thể truy cập trang web hoặc cài các ứng dụng của nhà mạng mà bạn đang sử dụng.
    #### Cách 1: Nhập mã vào bàn phím gọi.
    Các bạn nhập mã như sau với từng nhà mạng và ấn phím gọi:
    - Vinaphone: *110#
    - Mobiphone: *0#
    - Vietnamobile: *123#
    - Với nhà mạng Viettel, ta chỉ có thể kiểm tra theo cách này với một số sim bằng mã *777# hoặc *888#.

    ![Nhập mã tương ứng với các nhà mạng và ấn phím Gọi.](https://lh3.googleusercontent.com/TvfWXc7O66LG_zc8cbphdZ-ZAOEFZXDkjOATYcXmwZUltmBbcO82h-f-x9LyBh2sEykgdI_dZJsM)

    ![](https://lh3.googleusercontent.com/5a3DOqRCQGNj1vISP9obej5Cnl6ujqrxJpdyhdSUvl0x4rrT1Ufd5311-gbe7XFmmfsL1yCP4Mi-)

    #### Cách 2: Soạn TTTB gửi 1414 (Miễn phí).
    Cách này áp dụng được với tất cả các nhà mạng hiện tại.
    Sau khi gửi tin nhắn đến tổng đài bạn sẽ nhận được tin nhắn trả về với số điện thoại và một số thông tin khác trên chứng minh thư nhân dân(thẻ căn cước) mà bạn đăng kí số thuê bao.
    (TTTB: Thông tin thuê bao)
    ![](https://lh3.googleusercontent.com/A7FPS220mhQNl-UNCkwjZt1EiOXDbuUCiiKEt4Gf6AGiO2NXG9CUPeCavM5gP9MxeOtOGrpoVYBJ)

    #### Cách 3: Đối với hệ điều hành iOS
    Ngoài ra, đơn giản hơn, với những máy iPhone ta có thể xem số điện thoại của mình trực tiếp trong Danh Bạ điện thoại như sau:
    ![](https://lh3.googleusercontent.com/nhcwyZXR3OGNHkJJLMBGVihCp5RFlUVercQ6qgd_HjIheMMT0zpegj7sYRXlRP5oua-xSi0J8xWn)
    """
    a2.is(relationship: "Post").in(object: c1)

    graph.sync()
  }
}
