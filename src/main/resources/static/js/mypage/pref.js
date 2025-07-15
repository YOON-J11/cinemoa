document.addEventListener("DOMContentLoaded", function () {
  // 초기: DB에 저장된 선호 영화관 값으로 셀렉트박스 표시 세팅
  const hiddenInput = document.getElementById("preferredCinema");
  const selectBox = document.getElementById("cinemaSelect");

  // 렌더링 완료 후 실행 (영화관 초기값 세팅)
  setTimeout(() => {
    const savedValue = hiddenInput.value;
    if (savedValue) {
      const selectedOption = Array.from(document.querySelectorAll(".option"))
        .find(option => option.dataset.id === savedValue);
      if (selectedOption) {
        selectBox.textContent = selectedOption.textContent;
      }
    }
  }, 0);


  // 장르 체크 제한 (최대 3개)
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

  // 저장 시 확인 알림
  const form = document.querySelector("form");
  form.addEventListener("submit", function (e) {
    const confirmed = confirm("변경된 선호관람정보를 저장하시겠습니까?");
    if (!confirmed) {
      e.preventDefault(); // 저장 중단
    }
  });

  // 초기화 버튼 기능
  document.getElementById("resetBtn").addEventListener("click", function () {
    // 선호 영화관 값 초기화
    hiddenInput.value = "";
    selectBox.textContent = "영화관을 선택해주세요";

    // 장르 체크 해제
    document.querySelectorAll('input[name="preferredGenres[]"]:checked')
      .forEach(cb => cb.checked = false);
  });

  // 셀렉트 박스 클릭 시 옵션 열고 닫기
  selectBox.addEventListener("click", function () {
    this.parentNode.classList.toggle("open");
  });

  // 옵션 클릭 시 텍스트, 값 설정 + 옵션 닫기
  document.querySelectorAll(".option").forEach(option => {
    option.addEventListener("click", function () {
      const selectedText = this.textContent;
      const selectedValue = this.dataset.id;

      selectBox.textContent = selectedText;
      hiddenInput.value = selectedValue;

      selectBox.parentNode.classList.remove("open");
    });
  });

  // 셀렉트 외부 클릭 시 옵션 닫기
  document.addEventListener("click", function (e) {
    if (!e.target.closest(".custom-select-wrapper")) {
      selectBox.parentNode.classList.remove("open");
    }
  });
});
