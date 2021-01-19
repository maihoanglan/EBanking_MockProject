
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>E B@nking - Trang Admin - Thông tin tài khoản</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <jsp:include page="/WEB-INF/views/header.jsp" />

    </head>
    <body>
        <!-- header -->
        <header>
            <div class="container">
                <!-- nav -->
                <nav class="py-3 d-lg-flex">
                    <div id="logo">
                        <h1>
                            <a href="<c:url value="/admin/trangchu"/>"><span class="fa fa-university"></span>
                                E-Banking </a>
                        </h1>
                    </div>
                    <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu ml-auto mt-1">
                        <li class="active"><a href="<c:url value="/admin/trangchu"/>">Trang chủ</a></li>
                        <li class=""><a href="<c:url value="/admin/trangchu"/>">Về chúng tôi</a></li>
                        <li class=""><a href="<c:url value="/admin/trangchu"/>">Các dịch vụ</a></li>
                        <li class=""><a href="<c:url value="/admin/trangchu"/>">Liên hệ</a></li>
                        <c:choose>
                                <c:when test="${chucaidau != null}">
                                <li><a class="circle-avatar" href="<c:url value = ''/>">${chucaidau}</a></li>
                                <li><a href="<c:url value="/logout"></c:url>">Đăng xuất</a></li>
                                </c:when>
                                <c:otherwise>
                                <li class="last-grid"><a href="#">Bắt đầu ngay</a></li>
                                </c:otherwise>
                            </c:choose>
                    </ul>
                </nav>
                <!-- //nav -->
            </div>
        </header>
        <!-- //header -->

        <!-- inner-banner -->
        <section class="inner-banner" id="home">
            <div class="inner-layer">
                <div class="container"></div>
            </div>
        </section>
        <!-- //inner-banner -->

        <!-- breadcrumb -->
        <div class="breadcrumb-w3pvt">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value="/admin/trangchu"/>">Xin chào, Admin : ${name}</a></li>
                        <li class="breadcrumb-item" aria-current="page">Thông tin tài khoản</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- //breadcrumb -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-sm-3">
                    <div class="sidebar">
                        <a href="<c:url value="/admin/trangchu"/>">Trang chủ</a>
                        <a href="<c:url value="/admin/customer"/>">Xem danh sách khách hàng</a>
                        <a class="active" href="<c:url value="/admin/account"/>">Xem danh sách tài khoản</a>
                        <a href="<c:url value="/admin/transaction"/>">Xem danh sách giao dịch</a>
                        <a href="<c:url value="/admin/openAccount"/>">Mở tài khoản</a>
                        <a href="<c:url value="/admin/changeBalance"/>">Đổi số dư</a>
                    </div>
                </div>
                <div class="mt-md-0 mt-sm-5 mt-4" style="width: 70%;">
                    <h4 class="mb-4 w3f_title title_center">Thông tin tài khoản</h4>
                    <table class="table table-bordered">
                        <tr>
                            <td colspan="4" style="background-color: greenyellow;">Thông tin tài khoản</td>
                        </tr>
                        <tr>
                            <td>Số tài khoản</td>
                            <td>${account.getId()}</td>
                            <td>Ngày mở tài khoản</td>
                            <td>${account.getOpenDate()}</td>
                        </tr>
                        <tr>
                            <td>Số dư</td>
                            <td><span class="currency">${account.getBalance()}</span> VNĐ</td>
                            <td>Loại thẻ</td>
                            <td>${account.getType()}</td>
                        </tr>
                        <tr>
                            <td>Tình trạng</td>
                            <td>${account.getStatus()}</td>
                            <td>Ngân hàng quản lý</td>
                            <td>${account.getBank().getBranch()}, ${account.getBank().getDistrict()}, ${account.getBank().getCity()}</td>
                        </tr>
                        <tr>
                            <td colspan="4" style="background-color: greenyellow;">Chi tiết giao dịch</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <form:form name="contactform" method="POST" modelAttribute="searchTransaction" action="searchTransaction">
                                    <form:hidden path="id" value="${account.getId()}"/>
                                    <div class="form-group">
                                        <label>Từ ngày</label> <form:input type="date" class="form-control" path="dateFrom"
                                                    id="dateFrom" placeholder="Enter DateFrom" name="dateFrom"/>
                                        <label>Đến ngày</label> <form:input type="date" class="form-control" path="dateTo"
                                                    id="dateTo" placeholder="Enter DateTo" name="dateTo"/>
                                        <form:button type="submit" class="btn btn-default" style="margin-top: 20px;">Tìm kiếm</form:button>
                                    </div>
                                </form:form>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>



        <!-- footer -->
        <footer class="footer py-5">
            <div class="container pt-lg-4">
                <div class="row">
                    <div class="col-lg-3 col-sm-6 footer-top">
                        <h4 class="mb-4 w3f_title">Contact Info</h4>
                        <ul class="list-w3">
                            <li><span class="fa mr-1 fa-map-marker"></span>123 Ông Ích
                                Khiêm, Hải Châu Đà Nẵng</li>
                            <li class="my-2"><span class="fa mr-1 fa-phone"></span>1900
                                1010</li>
                            <li class="my-2"><span class="fa mr-1 fa-phone"></span>1900
                                1001</li>
                            <li class=""><span class="fa mr-1 fa-envelope"></span><a
                                    href="mailto:ebanking@gmail.com">ebanking@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-sm-6 footv3-left mt-sm-0 mt-4">
                        <h4 class="mb-4 w3f_title">Chương trình khách hàng</h4>
                        <ul class="list-w3">
                            <li class="my-2"><a href="#"> Chương trình khuyến mãi </a></li>
                            <li class="mb-2"><a href="#"> Tài khoản và tiết kiệm </a></li>
                            <li class="my-2"><a href="#"> Chuyển và nhận tiền </a></li>
                            <li class="my-2"><a href="#"> Thẻ ghi nợ Credit Cards </a></li>
                        </ul>

                    </div>
                    <div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
                        <h4 class="mb-4 w3f_title">Giới thiệu</h4>
                        <ul class="list-w3">
                            <li class="my-2"><a href="#"> Lịch sử phát triển </a></li>
                            <li class="mb-2"><a href="#"> Tầm nhìn chiến lược </a></li>
                            <li class="my-2"><a href="#"> Giá trị cốt lõi </a></li>
                            <li class="my-2"><a href="#"> Cơ cấu bộ máy quản lý </a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
                        <h4 class="mb-4 w3f_title">Thông tin</h4>
                        <ul class="list-w3">
                            <li class="my-2"><a href="#"> Đường dây nóng 24/7 </a></li>
                            <li class="mb-2"><a href="#"> Các chi nhánh ngân hàng </a></li>
                            <li class="my-2"><a href="#"> Ứng dụng di động </a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-sm-4 mt-lg-0 mt-sm-5 mt-4">
                        <h4 class="mb-4 w3f_title">Nhà đầu tư</h4>
                        <ul class="list-w3">
                            <li class="my-2"><a href="#"> Đại hội cổ đông </a></li>
                            <li class="mb-2"><a href="#"> Điều lệ quy chế </a></li>
                            <li class="my-2"><a href="#"> Báo cáo tài chính </a></li>
                            <li class="my-2"><a href="#"> Báo cáo thường niên </a></li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- //footer bottom -->
        </footer>
        <!-- //footer -->
        <!-- move top -->
        <div class="move-top text-right">
            <a href="#home" class="move-top"> <span
                    class="fa fa-angle-up  mb-3" aria-hidden="true"></span>
            </a>
        </div>
        <!-- move top -->
        <jsp:include page="/WEB-INF/views/footer.jsp" />
    </body>
</html>
