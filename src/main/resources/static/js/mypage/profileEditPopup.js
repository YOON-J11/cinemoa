window.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form");
  const resetBtn = document.getElementById("resetDefaultImgBtn");
  const previewImg = document.querySelector(".profile-preview");
  const fileInput = document.getElementById("profileImg");

  // 기본이미지 버튼 클릭 시 이미지 초기화
  resetBtn.addEventListener("click", function () {
    previewImg.src = "/images/icons/default-profile.png";
    fileInput.value = ""; // 선택된 파일 제거
  });

  // 저장 시: 부모창 새로고침 + 팝업 닫기
  form.addEventListener("submit", function () {
    // 부모창이 존재하고 열려 있다면 새로고침
    if (window.opener && !window.opener.closed) {
      window.opener.location.reload();
    }

    // 전송 여유를 주고 팝업 닫기
    setTimeout(() => {
      window.close();
    }, 100);
  });
});
