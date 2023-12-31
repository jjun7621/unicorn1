<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <!-- font -->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
</head>
<style>
  /* div { border: 1px solid orange; } */

  /* common */
  body { font-family: pretendard; }
  ul, ol, dl, li { list-style: none; }
  a { text-decoration: none; color: none; color: #000; }
  /* common end */
  a:hover, a:active, a:focus { text-decoration: none; }

  @font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
  }

  .sectionbody { width: 65%; margin: 0 auto;}
   /* =========================
  section header
  ========================= */  

  .headerimg { height: 50px; display: inline-block; width: 100%; line-height: 3; }
  .headerimg .img1, .img2, .img3 { width: 30px;}
  .right  { float: right;}
  .headerimg .img1 { margin-left: 10px;}
  .headerimg .img2, .img3 { margin-right: 10px;}

  .sectionheadertitle { display: flex; justify-content: center; height: 60px; align-items:center; color: #fff; background-color: #d8c69c;}

  /* ========================= 
  accordion event
  ========================= */
  
  .accordion-button { font-size: 20px; font-weight: 500;}
  .accordion-body { font-size: 15px;}
  
  .accordion-body tr { height: 70px;}
  .accordion-body th { text-align: left; border: none;}
  .accordion-body td { border: none; }

  /* .receiver-address .input-group { width: 700px; } */
  .accordion-body ul { margin: 0; padding: 0; }
  .accordion-body li { margin-bottom: 15px; }
  .accordion-body .postcode { width: 200px;}
  .accordion-body .receiver-phonenumber .input-group { width: 500px; line-height: 2;}
  
  .mail1.form-control{ width: 0px;}
  #mail2 { display: none;}
  
  #message-input { display: none;}
  

  .deleverystyle { background-color: #f8f5ec; line-height: 4;}
  .deleveryPrice { height: 60px; font-size: 16px; display: flex; justify-content: space-between; margin-left: 25px; margin-right: 50px; }

  .totalpricestyle { background-color: #f8f5ec; line-height: 4; }
  .totalPrice { height: 80px; font-size: 20px; font-weight: 500; display: flex; justify-content: space-between; margin-left: 25px; margin-right: 50px; }
  
  .totalReserveMoneystyle { background-color: #f8f5ec; line-height: 4; }
  .totalReserveMoney { height: 60px; font-size: 16px; font-weight: 500; display: flex; justify-content: space-between; margin-left: 25px; margin-right: 50px; }

  .paymentinfo .productprice, .deleveryfee, .pricecount { text-align: right; }
  .productReserveMoney, .memberReserveMoney, .VoucherReserveMoney { text-align: right; }

  .totalpricecheck { height: 70px; text-align: center; font-size: 20px; font-weight: 500; line-height: 4; background-color: #111; color: #fff;}
  .paymentcheckcontent { height: 100px; color:grey; font-size: 12px; margin : 20px 20px 20px 20px;}
</style>

<body class="main" style="margin-top: 0;">


  <section id="section" class="sectionbody">

    <div class="sectionheader">
      <div class="headerimg">
        <a href="product.jsp">
          <img src="https://ifh.cc/g/jXsrR9.jpg" alt="" class="img1">
        </a>
        <div class="right">
          <a href="mypage_main.jsp">
            <img src="https://ifh.cc/g/DfnpvF.jpg" alt="" class="img2"></a>
          <a href="shopping_basket.jsp">
            <img src="https://ifh.cc/g/LHYQN7.jpg" alt="" class="img3">
          </a>
        </div>
      </div>
      <div class="sectionheadertitle">
        <h4> 주문 / 결제 </h4>
      </div>
      <div class="infocontainer">
        <!-- ========================= 
        accordion event
        ========================= -->
        <div class="accordion" id="accordionPanelsStayOpenExample">


          <div class="accordion-item">
            <h2 class="accordion-header">
              <!-- ========================= 
              accordion event first
              ========================= -->

              <button class="accordion-button" type="button" data-bs-toggle="collapse"
                data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                aria-controls="panelsStayOpen-collapseOne">
                배송지
              </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
              <div class="accordion-body">

                <div class="form-check form-check-inline mt-3">
                  <input type="radio" name="radio1" value="oldlocation" class="form-check-input cursor-pointer"
                    id="compareinfo">
                  <label for="compareinfo" class="form-check-label cursor-pointer">
                    회원 정보와 동일
                  </label>
                </div>

                <div class="form-check form-check-inline">
                  <input type="radio" name="radio1" value="newlocation" class="form-check-input cursor-pointer"
                    id="newinfo">
                  <label for="newinfo" class="form-check-label cursor-pointer">
                    새로운 배송지
                  </label>
                </div>
                <div class="locationinfo">
                  <table class="table mt-5" class="receiverinfo">
                    <tbody>
                      <colgroup>
                        <col style="width:100px;">
                        <col style="width:auto;">
                      </colgroup>
                      <tr class="receiver-name">
                        <th scope="row">받는 사람 <span style="color: red;">*</span>
                        </th>
                        <td class="inputcontent">
                          <div class="input-group">
                    
                            <input type="text" class="form-control " id="rname" name="rname" placeholder="이름을 입력하세요"
                              value="">
                          </div>
                        </td>
                      </tr>

                      <tr class="receiver-address">
                        <th scope="row"> 주소 <span style="color: red;">*</span>
                        </th>
                        <td>
                          <div class="inputinfo">
                            <ul class="zipcode-group">
                              <li>
                                <div class="input-group" style="width: 400px;">
                                  <input type="text" id="postcode" placeholder="우편번호" class="postcode form-control" value="">
                                  <input type="button" class="btn btn-secondary" onclick="execDaumPostcode()"
                                    value="주소 검색">
                              </li>
                          </div>
                          <li><input type="text" id="address" placeholder="주소" class="form-control" value=""></li>
                          <li><input type="text" id="detailAddress" placeholder="상세주소" class="form-control" value=""></li>
                          <li><input type="hidden" id="extraAddress" placeholder="참고항목" class="form-control"></li>
                          </ul>
                </div>
                </td>
                </tr>

                <tr class="receiver-phonenumber">
                  <th scope="row"> 휴대전화 <span style="color: red;">*</span>
                  </th>
                  <td>
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" id="rnumber1" placeholder="010" name="pnum1" value="">-
                      <input type="text" class="form-control" id="rnumber2" name="pnum2" value="">-
                      <input type="text" class="form-control" id="rnumber3" name="pnum3" value="">
                  </td>
                </tr>

                <tr class="receiver-emailaddress">
                  <th scope="row"> 이메일
                  </th>
                  <td>
                    <div class="input-group mb-3">
                      <input type="text" id="mail1" name="mail1" class="mail1 form-control">
                      <span class="input-group-text" id="basic-addon1">@</span>
                      <select name="form-select" id="mail-list" class="form-select" style="border-radius: 5px;">
                        <option selected>-이메일 선택-</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="nate.com">nate.com</option>
                        <option value="hotmail.com">hotmail.com</option>
                        <option value="yahoo.com">yahoo.com</option>
                        <option value="etc">직접입력</option>
                        <input type="text" name="mail2" id="mail2" class="form-control" placeholder="직접입력">
                      </select>
                  </td>
                </tr>
                </tbody>
              </div>
              </table>

              <div class="massageform">
                <select name="form-select" id="message-list" class="form-select" style="border-radius: 5px;">
                  <option value="message-0" selected>--메시지 선택 (선택사항)--</option>
                  <option value="message-1">배송 전에 미리 연락바랍니다.</option>
                  <option value="message-2">부재 시 경비실에 맡겨주세요. </option>
                  <option value="message-3">부재 시 문 앞에 놓아주세요.</option>
                  <option value="message-4">빠른 배송 부탁드립니다</option>
                  <option value="message-etc">직접입력</option>
                  <input type="text" name="message-list2" id="message-input" class="form-control" placeholder="직접입력">
                </select>
              </div>

              <div class="form-check mt-4">
                <input type="checkbox" class="form-check-input cursor-pointer" id="savelocation">
                <label for="savelocation" class="form-check-label cursor-pointer">
                  <!-- label for에 chekbox id를 가져오면 체크박스뿐만 아니라 문자열을 클릭해도 체크됨 -->
                  기본 배송지로 저장
                </label>
             
              </div>
              
            </div>    
          </div>
        </div>
        <hr>


        <!-- ========================= 
              accordion event second
              ========================= -->
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
              aria-controls="panelsStayOpen-collapseTwo">
              주문상품
            </button>
          </h2>
          <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show">
            <div class="accordion-body">

              <div class="locationinfo">
                <table class="table" class="receiverinfo">
                  <tbody>
                    <colgroup>
                      <col style="width:100px;">
                      <col style="width:auto;">
                    </colgroup>
                    <tr class="orderedProduct">
                      <th scope="row" rowspan="3">
                      	<a href="product.jsp">
                        <img src="https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/3up7grk7/3/jpg/1484822727/1920x1080/fit_q87/3f2a5cc1b3e8c362dc71ecbcbb65c6898a838ab9/3.jpg" width="180px" height="150px" alt="" class="orderedImg">
                        </a>
                      </th>
                      <td class="inputcontent">
                        <div class="productname">
                          다크초콜릿&화이트 톤 심플 베드
                        </div>
                      </td>
                    </tr>
                    <td class="inputcontent">
                      <div class="productquantity">
                        수량 <span class="quantity-item">1개</span>
                      </div>
                    </td>
                    <tr style="border: none;">
                      <td class="inputcontent">
                        <div class="productprice">
                          <span class="quantity-item">500,000</span>원
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <div class="deleverystyle">
              <div class="deleveryPrice">
                <div class="title"> 배송비 </div>
                <div class="deleveryFee-item">
                  <span class="delveryFee"><strong> 20,000 </span> 원</strong>
                </div>
              </div>
            </div>

          </div>
        </div>

          <!-- ========================= 
          accordion event third
          ========================= -->
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                aria-controls="panelsStayOpen-collapseThree">
                결제정보
              </button>
            </h2>
            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show">
              <div class="accordion-body">

                <div class="paymentinfo">
                  <table class="table mt-3">
                    <tbody>
                      <tr>
                        <td class="productname"> 주문상품 </td>
                        <td class="productprice" style="padding-right: 30px;"> 500,000원 </td>
                      </tr>
                      <tr>
                        <td class="deleverytitle"> 배송비 </td>
                        <td class="deleveryfee" style="padding-right: 30px;"> 20,000원 </td>
                      </tr>
                      <tr>
                        <td class="pricecounttitle"> 할인/부가결제 </td>
                        <td class="pricecount" style="padding-right: 30px;"> 0원 </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <div class="totalpricestyle">
                <div class="totalPrice">
                  <div class="title"> 최종결제금액</div>
                  <div class="totalFee-item">
                    <span class="totalFee"><strong> 520,000 </span> 원</strong>
                  </div>
                </div>
              </div>

            </div>
          </div>
          

          <!-- ========================= 
          accordion event fourth
          ========================= -->

          <div class="accordion-item">
            <h2 class="accordion-header">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#panelsStayOpen-collapsefour" aria-expanded="false"
                aria-controls="panelsStayOpen-collapsefour">
                결제수단
              </button>
            </h2>
            <div id="panelsStayOpen-collapsefour" class="accordion-collapse collapse show">
              <div class="accordion-body">

                결제수단 선택
                <div class="paymentchoice mt-5">
                  <input type="radio" class="btn-check" name="options-base" id="option1" autocomplete="off" checked>
                  <label class="btn" for="option1">카드결제</label>

                  <input type="radio" class="btn-check" name="options-base" id="option2" autocomplete="off">
                  <label class="btn" for="option2">계좌이체</label>

                  <input type="radio" class="btn-check" name="options-base" id="option3" autocomplete="off">
                  <label class="btn" for="option3">무통장입금</label>

                  <input type="radio" class="btn-check" name="options-base" id="option4" autocomplete="off">
                  <label class="btn" for="option4">휴대폰 결제</label>
                </div>

                <div class="form-check mt-5">
                  <input type="checkbox" class="form-check-input cursor-pointer" id="paymentmethod">

                  <label for="paymentmethod" class="form-check-label cursor-pointer">
                    결제수단과 방법을 다음에도 사용
                  </label>
                </div>

              </div>
            </div>
          </div>

          <!-- ========================= 
          accordion event fifth
          ========================= -->

          <div class="accordion-item">
            <h2 class="accordion-header">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#panelsStayOpen-collapsefive" aria-expanded="false"
                aria-controls="panelsStayOpen-collapsefive">
                적립혜택
              </button>
            </h2>
            <div id="panelsStayOpen-collapsefive" class="accordion-collapse collapse show">
              <div class="accordion-body">

                <div class="paymentinfo">
                  <table class="table mt-3">
                    <tbody>
                      <tr>
                        <td class="productReserveMoneyTitle"> 상품별 적립금 </td>
                        <td class="productReserveMoney" style="padding-right: 30px;"> 0원 </td>
                      </tr>
                      <tr>
                        <td class="memberReserveMoneyTitle"> 회원 적립금 </td>
                        <td class="memberReserveMoney" style="padding-right: 30px;"> 0원 </td>
                      </tr>
                      <tr>
                        <td class="VoucherReserveMoneyTitle"> 쿠폰적립금 </td>
                        <td class="VoucherReserveMoney" style="padding-right: 30px;"> 0원 </td>
                      </tr>
                    </tbody>
                  </table>
                </div>

              </div>

              <div class="totalReserveMoneystyle">
                <div class="totalReserveMoney">
                  <div class="title"> 적립예정금액 </div>
                  <div class="totalReserveMoney-item">
                    <span class="totalReserveMoney"><strong> 0원 </span></strong>
                  </div>
                </div>
              </div>


            </div>
          </div>
        
        <!-- ========================= 
        accordion event end
        ========================= -->
          
          <div class="paymentcheck">
            <a href="paymentComplete.jsp">
            <div class="totalpricecheck">
              <span class="totalprice"> 520,000</span>원 결제하기</div>
            </a>
            <div class="paymentcheckcontent">
              - 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다. <br><br>
              - 최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.
            </div>
          </div>



      </div>





  </section>

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
  // 받는 사람 입력 요소
  let nameInput = document.querySelector("#rname");
	let postcodeInput = document.querySelector("#postcode");
	let numInput1 = document.querySelector("#rnumber1");
	let numInput2 = document.querySelector("#rnumber2");
	let numInput3 = document.querySelector("#rnumber3");
	let addressInput = document.querySelector("#address");
	let detailAddressInput = document.querySelector("#detailAddress");
  let mail1Input = document.querySelector("#mail1")
  let mail2Input = document.querySelector("#mail2")
  
  <%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String phoneNumber = (String) session.getAttribute("phoneNumber");
	String address = (String) session.getAttribute("address");
	String email = (String) session.getAttribute("email");
	String zipcode = (String) session.getAttribute("zipcode"); 
	String detailAddress = (String) session.getAttribute("detailAddress"); 
			
	System.out.println(id);
	System.out.println(phoneNumber);
	System.out.println(address);
	System.out.println(email);
	System.out.println(zipcode);
	System.out.println(detailAddress);
%>
	
	<%
	String[] phoneNumberArr = phoneNumber.split("-");
	String pnum1 =  phoneNumberArr[0];  
	String pnum2 =  phoneNumberArr[1];  
	String pnum3 =  phoneNumberArr[2];  
	
	String[] mailArr = email.split("@");
	String mail1 = mailArr[0];
	String mail2 = mailArr[1];
	%>
    /* ========================= 
    post code script
    ========================= */

    function execDaumPostcode() {
    	//
    	let radiobutton2 = document.querySelector("#newinfo");
        radiobutton2.checked = true;
        
        nameInput.value = "";
        numInput1.value = "";
        numInput2.value = "";
        numInput3.value = "";
        postcodeInput.value = "";
        addressInput.value = "";
        detailAddressInput.value = "";
        
        maillist.style.display = "block";
        mailinput.style.display = "none";
        mail1Input.value= "";
        mail2Input.value= "";
    	
      new daum.Postcode({
        oncomplete: function (data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var addr = ''; // 주소 변수
          var extraAddr = ''; // 참고항목 변수

          //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
          if (data.userSelectedType === 'R') {
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
              extraAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraAddr !== '') {
              extraAddr = ' (' + extraAddr + ')';
            }
            // 조합된 참고항목을 해당 필드에 넣는다.
            document.getElementById("extraAddress").value = extraAddr;

          } else {
            document.getElementById("extraAddress").value = '';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('postcode').value = data.zonecode;
          document.getElementById("address").value = addr;
          // 커서를 상세주소 필드로 이동한다.
          document.getElementById("detailAddress").focus();
        }
      }).open();
      
      
    }

    /* ========================= 
    selectbox script
    ========================= */

    let maillist = document.querySelector("#mail-list");
    let mailinput = document.querySelector("#mail2")

    maillist.addEventListener("change", (event) => {
      if (event.target.value == "etc") {
        maillist.style.display = "none";

        mailinput.style.width = "50px";
        mailinput.style.display = "block";
      }
    });

    let messagelist = document.querySelector("#message-list");
    let messageinput = document.querySelector("#message-input")

    messagelist.addEventListener("change", (event) => {
      if (event.target.value == "message-etc") {
        messagelist.style.display = "none";

        // messageinput.style.width = "50px";
        messageinput.style.display = "block";
      }
    });


    
 // 라디오 버튼 요소
    let radiobutton = document.querySelector("#compareinfo");


	
	
    // 라디오 버튼의 변경 이벤트
    radiobutton.addEventListener("change", function () {
      // 라디오 버튼이 선택되었을 때
      if (radiobutton.checked) {
        
<%--         let nameFromSession = "<%= session.getAttribute("name") %>"; --%>
        let nameFromSession = "<%= session.getAttribute("name") %>";
        let pnum1FromSession = "<%= pnum1 %>";
        let pnum2FromSession = "<%= pnum2 %>";
        let pnum3FromSession = "<%= pnum3 %>";
        let postcodeFromSession = "<%= zipcode %>";
        let addressFromSession = "<%= address %>";
        let detailAddressFromSession = "<%= detailAddress %>";
        let mail1FromSession = "<%= mail1 %>";
        let mail2FromSession = "<%= mail2 %>";
        
        nameInput.value = nameFromSession;
        numInput1.value = pnum1FromSession;
        numInput2.value = pnum2FromSession;
        numInput3.value = pnum3FromSession;
        postcodeInput.value = postcodeFromSession;
        addressInput.value = addressFromSession;
        detailAddressInput.value = detailAddressFromSession;
        mail1Input.value= mail1FromSession;
        
        maillist.style.display = "none";
        mailinput.style.width = "50px";
        mailinput.style.display = "block";
        
        mail2Input.value= mail2FromSession;
        
        
        
      }
    });
    
    let radiobutton2 = document.querySelector("#newinfo");
    
    radiobutton2.addEventListener("change", function () {
    	if (radiobutton2.checked) {
    		nameInput.value = "";
            numInput1.value = "";
            numInput2.value = "";
            numInput3.value = "";
            postcodeInput.value = "";
            addressInput.value = "";
            detailAddressInput.value = "";
            
            mail1Input.value= "";
            
            maillist.style.display = "block";
            mailinput.style.display = "none";
            
            mail2Input.value= "";
    	}
    });
    	
    
    
  </script>
</body>

</html>