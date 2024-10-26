// 추가 버튼 클릭 시
const addBtn = document.querySelector("#addBtn");
addBtn.addEventListener("click", () => {
	// 추가할 수 있는 화면 요청 (Get 요청)
	location.href = "/student/add?studNo=" + studNo;
});



/* 학생 이름이 작성되지 않은 경우 form 제출 막기 */

const addForm = document.querySelector("#addForm");
const stdName = document.querySelector("[name=stdName]");

// addForm  이 제출될 때
addForm.addEventListener("submit", e => {
  // e : 이벤트 객체

  const input = stdName.value.trim();

  // 이름이 입력되지 않았을 때
  if(input.length === 0) {
    // form 제출 이벤트 막기
    e.preventDefault();

    alert("학생 이름을 입력해주세요!");
    stdName.focus();
  }
});