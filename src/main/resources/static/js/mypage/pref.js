document.addEventListener("DOMContentLoaded", function () {
  const regionSelectBox = document.getElementById("regionSelectBox");
  const regionOptions = document.getElementById("regionOptions");

  const cinemaSelect = document.getElementById("cinemaSelect");
  const cinemaOptions = document.getElementById("cinemaOptions");
  const cinemaSelectWrapper = document.getElementById("cinemaSelectWrapper");
  const hiddenInput = document.getElementById("preferredCinema");

  const allCinemas = Array.from(document.querySelectorAll(".cinema-option")); // 초기 전체 목록 저장

  // 셀렉트 열기/닫기
  document.querySelectorAll(".custom-select").forEach(select => {
    select.addEventListener("click", function (e) {
      e.stopPropagation();
      closeAllSelects();
      this.parentNode.classList.toggle("open");
    });
  });

  document.addEventListener("click", closeAllSelects);

  function closeAllSelects() {
    document.querySelectorAll(".custom-select-wrapper").forEach(wrapper => {
      wrapper.classList.remove("open");
    });
  }

  // 지역 선택
  document.querySelectorAll(".region-option").forEach(option => {
    option.addEventListener("click", function () {
      const region = this.dataset.id;
      regionSelectBox.textContent = region;
      regionSelectBox.dataset.value = region;

      // 영화관 필터링
      cinemaOptions.innerHTML = ""; // 기존 영화관 목록 제거
      allCinemas.forEach(cinema => {
        if (cinema.dataset.region === region) {
          const cloned = cinema.cloneNode(true);
          cloned.addEventListener("click", function () {
            const name = this.textContent;
            const id = this.dataset.id;
            cinemaSelect.textContent = name;
            hiddenInput.value = id;
            closeAllSelects();
          });
          cinemaOptions.appendChild(cloned);
        }
      });

      cinemaSelect.textContent = "영화관을 선택해주세요";
      hiddenInput.value = "";
      cinemaSelectWrapper.style.display = "block";
      closeAllSelects();
    });
  });

  // 장르 체크박스 제한 (최대 3개)
  document.querySelectorAll('input[name="preferredGenres[]"]').forEach(cb => {
    cb.addEventListener("change", function () {
      const checked = document.querySelectorAll('input[name="preferredGenres[]"]:checked').length;
      if (checked > 3) {
        alert("선호 장르는 최대 3개까지만 선택할 수 있습니다.");
        this.checked = false;
      }
    });
  });

  // 저장 시 확인
  document.querySelector("form").addEventListener("submit", function (e) {
    if (!confirm("변경된 선호관람정보를 저장하시겠습니까?")) {
      e.preventDefault();
    }
  });

  // 초기화 버튼
  document.getElementById("resetBtn").addEventListener("click", function () {
    regionSelectBox.textContent = "지역을 선택해주세요";
    delete regionSelectBox.dataset.value;

    cinemaSelect.textContent = "영화관을 선택해주세요";
    cinemaOptions.innerHTML = "";
    cinemaSelectWrapper.style.display = "none";
    hiddenInput.value = "";

    document.querySelectorAll('input[name="preferredGenres[]"]').forEach(cb => {
      cb.checked = false;
    });
  });
});
