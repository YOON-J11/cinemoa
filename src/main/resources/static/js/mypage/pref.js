document.addEventListener("DOMContentLoaded", function () {
    const checkboxes = document.querySelectorAll('input[name="preferredGenres"]');

    checkboxes.forEach(function (checkbox) {
      checkbox.addEventListener("change", function () {
        const checkedCount = document.querySelectorAll('input[name="preferredGenres"]:checked').length;

        if (checkedCount > 3) {
          alert("선호 장르는 최대 3개까지만 선택할 수 있습니다.");
          this.checked = false; // 선택 해제
        }
      });
    });
  });