document.addEventListener("DOMContentLoaded", function () {
  // 장르 체크 제한
  const checkboxes = document.querySelectorAll('input[name="preferredGenres[]"]');
  checkboxes.forEach(function (checkbox) {
    checkbox.addEventListener("change", function () {
      const checkedCount = document.querySelectorAll('input[name="preferredGenres[]"]:checked').length;
      if (checkedCount > 3) {
        alert("선호 장르는 최대 3개까지만 선택할 수 있습니다.");
        this.checked = false;
      }
    });
  });

  // 저장 전 확인 알림
  const form = document.querySelector("form");
  form.addEventListener("submit", function (e) {
    const confirmed = confirm("변경된 선호관람정보를 저장하시겠습니까?");
    if (!confirmed) {
      e.preventDefault(); // 저장 막기
    }
  });

  // 초기화 버튼 기능
  document.getElementById("resetBtn").addEventListener("click", function () {
    // 선호 영화관 초기화
    document.getElementById("preferredCinema").value = "";

    // 장르 체크박스 해제
    document.querySelectorAll('input[name="preferredGenres[]"]:checked')
      .forEach(cb => cb.checked = false);
  });
});
