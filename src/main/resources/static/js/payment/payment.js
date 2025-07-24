document.addEventListener("DOMContentLoaded", () => {
  const IMP = window.IMP;
  if (!IMP) {
    console.error("아임포트 SDK 로딩 실패");
    return;
  }

  IMP.init("imp42813807"); // 아임포트 가맹점 식별코드

  document.getElementById("pay-button").addEventListener("click", () => {
    IMP.request_pay({
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "order_" + new Date().getTime(),
      name: "영화 예매",
      amount: 1, //가격 1원으로 설정
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
            method: rsp.pay_method
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
