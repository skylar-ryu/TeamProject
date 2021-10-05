<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Reservation **</title>

<link rel="stylesheet" href="resources/resLib/css/vendor.css">
<link rel="stylesheet" href="resources/resLib/css/style.css">
<link rel="stylesheet" href="resources/resLib/css/font-awesome.css">
<link rel="stylesheet" href="resources/resLib/css/rpc.css">

<script src="resources/resLib/js/vendor.js"></script>
<script src="resources/resLib/js/polyfills.js"></script>
<script src="resources/resLib/js/app.js"></script>
<script src="resources/resLib/rperson.js"></script>
<script src="resources/resLib/rpc.js"></script>
<script src="resources/resLib/calendar.js"></script>
<script>
$(function (){
	$('.calendar').calendar({
	    minDate: new Date(),
	    maxDate: new Date(2021, 10, 22),
	    selectedDay: new Date(),
	    dayItemContents: ['month-short', 'day'],
	}).on('select-a-date', function (e, date) {
	    console.log(date);
	});

	$('.calendar').on('select-a-date', function (e, date) {
	  console.log('selected date:', date);
	});

}
</script>


</head>
<body>

<!-- header start -->
다른사람 부트스트랩 참고 위쪽 tag 띠 text, href 추가
<!-- header end -->

<!-- page title start -->
<section class="jumbotron jumbotron-fluid mb-0">
   <div class="container">
      <h1 class="jumbotron-title mb-0">Make A Reservation</h1>
   </div>
</section>
<!-- page title end -->

<!-- page content start -->
<section class="section py-21">
    <div class="section-content container">
       <div class="row">
          <div class="col-12 col-lg-8 mb-20 mb-lg-0">
             <div class="form-collapsible-section mb-4" role="article" aria-expanded="true">
                <div class="form-collapsible-section-head">
                    <span class="form-collapsible-section-number">1</span>
                    <span class="form-collapsible-section-title">날짜/시간선택</span>
                    <span class="form-collapsible-section-toggle">
                        <i class="material-icons">keyboard_arrow_down</i>
                        <!-- 클릭시 html2-jquery03-animate 참고 hide 구현 -->
                    </span>
                </div>
                <div class="form-collapsilble-section-body">
                   <!-- 달력 구현 -->
                   <!-- 기간 jquery로 년, 월, 일 가져와서 달력 min, max date 입력 -->
                   <div class="calendar"></div>
                   <div class="row mt-12">
                      <div class="col-12 col-sm mr-0 mr-md-9 mb-12 mb-sm-0">
                         <div class="mb-7">Morning</div>
                         <!-- 추후 사업자시간 배열로 rptime에 들어가도록 처리 -->
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-1"> 
                            <label for="time-slot-1" class="mb-0">9:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="1"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-2"> 
                            <label for="time-slot-2" class="mb-0">11:30</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="2"/>
                         </div>
                      </div>   
                      <div class="col-12 col-sm mr-0 mr-md-9 mb-12 mb-sm-0">
                         <div class="mb-7">Afternoon</div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-3"> 
                            <label for="time-slot-3" class="mb-0">1:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="3"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-4"> 
                            <label for="time-slot-4" class="mb-0">2:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="4"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-5"> 
                            <label for="time-slot-5" class="mb-0">4:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="5"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-6"> 
                            <label for="time-slot-6" class="mb-0">5:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="6"/>
                         </div>
                      </div>  
                      <div class="col-12 col-sm">
                         <div class="mb-7">Evening</div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-7"> 
                            <label for="time-slot-7" class="mb-0">6:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="7"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-8"> 
                            <label for="time-slot-8" class="mb-0">7:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="8"/>
                         </div>
                         <div class="form-selectable-label text-center time-slot mb-4" data-input="#time-slot-9"> 
                            <label for="time-slot-9" class="mb-0">8:00</label>
                            <input class="sr-only" type="radio" name="rptime" id="rptime" value="9"/>
                         </div>
                      </div> 
                   </div> 
                   <div class="pb-19"></div>
                </div> 
             </div> 
             <div class="form-collapsible-section mb-4" role="article" aria-expanded="true">
                <div class="form-collapsible-section-head">
                    <span class="form-collapsible-section-number">2</span>
                    <span class="form-collapsible-section-title">인원선택</span>
                    <span class="form-collapsible-section-toggle">
                        <i class="material-icons">keyboard_arrow_down</i>
                    </span>
                </div>
                <div class="form-collapsilble-section-body">
                   <div class="form-label mb-6">Choose a number of people</div>
                   <!-- 선택한 값이 rperson에 들어가도록 처리, rprice 계산 -->
	               <div class="num">
                       <input type="number" name="rperson" id="rperson" size="2" maxlength="4" class="rperson" value="1" >
                   </div>
                   <div class="pb-19"></div> 
                </div> 
             </div> 
             <div class="form-collapsible-section mb-4" role="article" aria-expanded="true">
                <div class="form-collapsible-section-head">
                    <span class="form-collapsible-section-number">3</span>
                    <span class="form-collapsible-section-title">예약자정보</span>
                    <span class="form-collapsible-section-toggle">
                        <i class="material-icons">keyboard_arrow_down</i>
                    </span>
                </div>
                <!-- 예약자 정보확인 로그인한 pmember 정보 가져오기-->
                <div class="form-collapsilble-section-body">
                   <div class="row">
                      <div class="col-12 col-sm-6">
                         <div class="form-group mb-5">
                            <label for="name" class="form-lable">Name</label>
                            <input type="text" class="form-control" id="name">
                         </div> 
                      </div>
                      <div class="col-12 col-sm-6">
                         <div class="form-group">
                            <label for="tel" class="form-lable">Telephone</label>
                            <input type="text" class="form-control" id="tel">
                         </div> 
                      </div>
                      <div class="col-12 col-sm-6">
                         <div class="form-group">
                            <label for="email" class="form-lable">Email</label>
                            <input type="text" class="form-control" id="email">
                         </div> 
                      </div>
                      <div class="col-12 col-sm-6">
                         <div class="form-group">
                            <label for="addr" class="form-lable">Address</label>
                            <input type="text" class="form-control" id="addr">
                         </div> 
                      </div>
                      <div class="col-12">
                         <div class="form-group">
                            <label for="rmemo" class="form-lable">Message</label>
                            <textarea id="rmemo" class="form-control" rows="4" ></textarea>
                         </div> 
                      </div>
                   </div> 
                   <div class="pb-19"></div>
                </div> 
             </div> 
             <div class="form-collapsible-section mb-4" role="article" aria-expanded="true">
                <div class="form-collapsible-section-head">
                    <span class="form-collapsible-section-number">4</span>
                    <span class="form-collapsible-section-title">결제방법</span>
                    <span class="form-collapsible-section-toggle">
                        <i class="material-icons">keyboard_arrow_down</i>
                    </span>
                </div>
                <!-- 추후 결제방법마다 디체일 구현 -->
                <div class="form-collapsilble-section-body">
                   <div class="form-group">
                      <div class="form-label mb-6">Choose payment method</div>
                      <div class="form-check form-check-inline">
                         <input class="custom-radio" type="radio" id="payment-radio-1" name="rpay" value="option1" checked="checked">
                         <label class="form-check-label" for="payment-radio-1">현장결제</label>
                      </div>
                      <div class="form-check form-check-inline">
                         <input class="custom-radio" type="radio" id="payment-radio-2" name="rpay" value="option2">
                         <label class="form-check-label" for="payment-radio-2">계좌이체</label>
                      </div>
                      <div class="form-check form-check-inline">
                         <input class="custom-radio" type="radio" id="payment-radio-3" name="rpay" value="option3">
                         <label class="form-check-label" for="payment-radio-3">신용카드</label>
                      </div>
                      <div class="form-check form-check-inline">
                         <input class="custom-radio" type="radio" id="payment-radio-4" name="rpay" value="option4">
                         <label class="form-check-label" for="payment-radio-4">핸드폰</label>
                      </div>
                   </div>
                </div> 
             </div> 
          </div> 
          <div class="col-12 col-lg-4">
             <!-- 선택사항 확인 창 -->
             <div class="sticky-sidebar">
                <div class="card">
                   <div class="card-body">
                      <h1 class=""></h1>
                      <span></span>
                      <div class="bigtext right-align sumcount" id="sum_rp_num">인원수: 명</div>
                      <div class="bigtext right-align box indigo summoney" id="sum_rp_price">합계금액: 원</div>
                      <a href="#" class="btn" id="areservation">지금 예약</a>
                   </div>
                </div>
             </div>
          </div>
       </div> 
    </div> 
</section>
<!-- page content end -->

<!-- footer start -->
다른사람 부트스트랩 참고 추가
<!-- footer end -->

</body>
</html>