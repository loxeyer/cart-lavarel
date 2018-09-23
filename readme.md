<p align="center">
    <img src="https://s-cart.org/scart.png" width="150"><br>
</p>
<p align="center">Open source e-commerce for business use laravel framework</p>
<p align="center">
<a href="http://demo.s-cart.org">Demo</a> | <a href="https://s-cart.org">Home page</a>
</p>
<p align="center">
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/license.svg" alt="License"></a>
</p>
<p align="center"><img src="https://s-cart.org/images/s1.jpg"></p>
<p align="center"><img src="https://s-cart.org/images/s11.jpg"></p>
<p align="center"><img src="https://s-cart.org/images/s2.jpg"></p>
<p align="center"><img src="https://s-cart.org/images/s3.jpg"></p>


## Giới thiệu về mã nguồn
Open source E-commerce use Laravel framework

Mã nguồn website thương mại điện tử cho doanh nghiệp xây dựng bằng laravel framework

## CÔNG NGHỆ SỬ DỤNG
- Nền tảng Laravel framework: https://laravel.com/
- Tích hợp Laravel-admin : http://laravel-admin.org/
- Ngoài ra, mã nguồn cũng tích hợp các thư viện miễn phí khác để hỗ trợ phát triển các ứng dụng cho website


## NGUYÊN TẮC XÂY DỰNG MÃ NGUỒN
- Không can thiệp vào core của bất kì library nào. Vì vậy bạn hoàn toàn có thể update bất kì thư viện vào khi cần thiết
- Download và sử dụng miễn phí



## CHỨC NĂNG MÃ NGUỒN

=======QUẢN LÝ TIN TỨC=======

- Tạo Blog, Tin tức
- Quản lý bài viết theo danh mục
- Tạo các trang riêng
- Liên hệ & form contact

======= SHOP BÁN HÀNG=======

- Chức năng tạo giỏ hàng, mua hàng, tạo đơn hàng cho khách hàng
- Chức năng đăng ký thành viên, xem lịch sử mua hàng của khách hàng
- Chức năng đăng sản phẩm theo danh mục
- Chức năng đăng hình ảnh tự tạo thumbnail, chèn logo lên ảnh
- Chức năng xử lý đơn hàng theo giá khuyến mãi, giá gốc...
- Chức năng tính tiền ship, mã giảm giá,
- Chức năng thanh toán online qua paypal
....

======= QUẢN LÝ HỆ THỐNG=======

- Quản lý & phân quyền user
- Quản lý thông tin doanh nghiệp: tên, địa chỉ, số điện thoại, email...
- Quản lý khách hàng
- Quản lý đơn hàng: chỉnh sửa đơn hàng, thống kê, cập nhật trạng thái đơn hàng, trạng thái thanh toán...
- Nhật ký đơn hàng: Tổng giá trị, đã thanh toán, còn lại, history..
- Quản lý banner, logo
- Phân loại sản phẩm: giá bán, giá khuyến mãi, giá cost, hàng tồn, hàng xuất, nhãn hiệu...
- Biểu đồ theo dõi
- Report, export excel
- Cấu hình hệ thống: bật tắt website, ẩn/hiện sản phẩm, bài viết
- Đăng nhập khi mua hàng hoặc không, mua hàng out of tock hoặc không ...
- Cấu hình email gửi nhận
...


## Yêu cầu cài đặt

Version 2.0 & 1.6:

> Core laravel framework 5.6. Yêu cầu:

```
- PHP >= 7.1.3
- OpenSSL PHP Extension
- PDO PHP Extension
- Mbstring PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension
- Ctype PHP Extension
- JSON PHP Extension
```
Version 1.5:

> Core laravel framework 5.5. Yêu cầu:

```
- PHP >= 7.0.0
- OpenSSL PHP Extension
- PDO PHP Extension
- Mbstring PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension
```


## Cấu hình và cài đặt:

Để cài đặt phiên bản mới nhất của S-cart

```
composer create-project lanhktc/s-cart
```

Hoặc, cài đặt một phiên bản chỉ định. Ví dụ 1.5.0

```
composer create-project lanhktc/s-cart your-project "1.5.0"
```


- Chmod -R 777 public/documents/website
- Folder thumbnail: public/documents/website/thumb.

```
- Create a new database. Then, import file sql database/s-cart.sql.
- Link admin: your-domain/system_admin. User/pass admin/admin
```



## Demo:

```
- Font-end : http://demo.s-cart.org
- Back-end: http://demo.s-cart.org/system_admin   User/pass: user/123456
```
