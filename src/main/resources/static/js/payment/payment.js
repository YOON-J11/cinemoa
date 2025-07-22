document.addEventListener("DOMContentLoaded", () => {
  const IMP = window.IMP;
  if (!IMP) {
    console.error("아임포트 SDK 로딩 실패");
    return;
  }

  IMP.init("imp42813807"); // 아임포트 가맹점 식별코드

  document.getElementById("pay-button").addEventListener("click", () => {
    IMP.request_pay({
      pg: "html5_inicis",  // 테스트용이면 "html5_inicis.INIBillTst"
      pay_method: "card",
      merchant_uid: "order_" + new Date().getTime(),
      name: "영화 예매",
      amount: amount,
      buyer_email: "test@example.com",
      buyer_name: "홍길동",
      buyer_tel: "010-1234-5678"
    }, function (rsp) {
      if (rsp.success) {
        fetch("/payment/complete", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            impUid: rsp.imp_uid,
            merchantUid: rsp.merchant_uid,
            paidAmount: rsp.paid_amount,
            method: rsp.pay_method,
            cinemaId: selectedCinemaId,      // 선택된 영화관 id (js 변수로 넣기)
            movieId: selectedMovieId,        // 선택된 영화 id
            showtimeId: selectedShowtimeId,  // 선택된 상영시간 id
            screenId: selectedScreenId,      // 선택된 상영관 id
            seatInfo: selectedSeatInfo,      // 선택된 좌석 정보 문자열 ("A1,A2")
            seatIdList: selectedSeatIdList   // 선택된 좌석 id 리스트 ([1, 2])
          })
        }).then(() => {
          alert("결제 완료!");
          location.href = "/reservation/complete";
        });
      } else {
        alert("결제 실패: " + rsp.error_msg);
      }
    });
  });
});
