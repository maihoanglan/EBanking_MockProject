
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>E B@nking - Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }

            function cancel() {
                window.location.href = 'http://localhost:8080/ebanking/';
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
                            <a href="<c:url value="/"/>"><span class="fa fa-university"></span>
                                E-Banking </a>
                        </h1>
                    </div>
                    <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu ml-auto mt-1">
                        <li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>
                        <li class=""><a href="<c:url value="/"/>">Về chúng tôi</a></li>
                        <li class=""><a href="<c:url value="/"/>">Các dịch vụ</a></li>
                        <li class=""><a href="<c:url value="/"/>">Liên hệ</a></li>
                        <li class="last-grid"><a href="<c:url value="/login"/>">Bắt đầu ngay</a></li>
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
                        <li class="breadcrumb-item"><a href="<c:url value="/"/>">Trang chủ</a></li>
                        <li class="breadcrumb-item" aria-current="page">Đăng nhập</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- //breadcrumb -->

        <div class="container">
            <div class="row">
                <div class="contact-form mt-md-0 mt-sm-5 mt-4">
                    <h4 class="mb-4 w3f_title title_center">ĐĂNG NHẬP</h4>
                    <form name="contactform" id="contactform" method="POST" action="j_spring_security_check">
                        <div class="form-group">
                            <label>Tên đăng nhập</label> <input type="text" class="form-control" required="required"
                                                                id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label> <input type="password" class="form-control" required="required"
                                                           id="password" placeholder="Nhập mật khẩu" name="password"/>
                        </div>
                        <div class="form-group">
                            <label>Captcha</label> 
                            <img src="${pageContext.request.contextPath }/captcha">
                            <br>
                            <input type="text" name="captcha" class="form-control" required="required" style="margin-top: 20px;" path="captcha"/>
                            <br>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" 
                               value="${_csrf.token}"/>
                        <c:choose>
                            <c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'Bad credentials'}">
                                <p style="color:red;">Bạn đã nhập nhầm tên đăng nhập hoặc mật khẩu. Vui lòng thử lại.</p>
                            </c:when>
                            <c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User is disabled'}">
                                <p style="color:red;">Tài khoản chưa được kích hoạt. Hãy kích hoạt tài khoản và thử lại.</p>
                            </c:when>
                            <c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'Wrong captcha'}">
                                <p style="color:red;">Bạn đã nhập nhầm captcha. Vui lòng thử lại.</p>
                            </c:when>
                        </c:choose>
                        <c:if test="${logout == 'true'}">
                            <p>Bạn đã đăng xuất khỏi hệ thống</p>
                        </c:if>        
                        <div style="margin-bottom: 20px;">
                            <button type="submit" class="btn btn-default">Đăng nhập</button>
                            <button type="button" class="btn btn-primary" onclick="cancel()" style="margin-left: 20px;">Hủy bỏ</button>
                        </div>

                        <p style="margin-bottom: 20px;">Chưa có tài khoản? <a href="<c:url value="/register"/>">Đăng kí ngay</a></p>
                    </form>
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