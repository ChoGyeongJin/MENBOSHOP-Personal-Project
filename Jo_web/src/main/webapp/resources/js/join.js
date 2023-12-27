        
        function execDaumPostcode() {
            new daum.Postcode( {
                oncomplete: function (data) {
                    document.getElementById( 'address-1' ).value = data.zonecode;
                    document.getElementById( 'confirm').value = data.address;
                }
            }).open();
        }
        
        function newPage() {
        window.location.href = "../main/index.jsp";
        }
        
        /* ---- 체크박스 전체 선택 및 유효성 검사 기능 구현 중 ---- */
        function checkAll() {
            var obj = document.getElementsByName("notice[]");
            if(obj.length > 0){
                for(var i=0; i<obj.length; i++) {
                    if(obj[i].checked == false){
                        obj[i].checked = true;
                    }else{
                        obj[i].checked = false; //false값일때 값 
                    }
                }
            }
        }        

        function chkchk (form) {
            var arr_form = document.getElementsByName("notice[]");
            var num = 0;

            for(var i=0; i<arr_form.length; i++) {
               if(arr_form[i].checked) {
                    num++;
               } 
            }
            if(!notice1.checked){
                alert("필수 항목을 체크해 주세요.");
                return false;
            }
        }

        window.onload = function(){
            frm_join.id_btn.addEventListener("click", function(){
                
                let valid = false;
                //아이디 입력값 조건: 아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다.
                //정규표현식: const regExp = /(?=.*[0-9]){8,10}/;
                const regExp_id = /^(?=.*[0-9])[A-Za-z0-9~!@#$%^()+|=]{6,10}$/;

                if(frm_join.member_id.value.length == 0){
                    alert("아이디가 입력되지 않았습니다.");
                    frm_join.member_id.focus();
                }else if(!regExp_id.test(frm_join.member_id.value)){
                    alert("아이디는 6글자와 10글자 사이의 형태로 숫자가 1개 이상 포함되어야 합니다.");
                    frm_join.member_id.focus();
                }else if(regExp_id.test(frm_join.member_id.value)){
                    alert("사용가능한 아이디입니다.")
                    frm_join.member_id.focus();
                }                
                else{
                    frm_join.member_pw.focus();
                }

            });
            frm_join.addEventListener("submit", function(e){
                //입력값의 유효성검사 통과여부:valid
                let valid = false;

                const regExp_id = /^(?=.*[0-9])[A-Za-z0-9~!@#$%^()+|=]{6,10}$/;
                //비밀번호에 대한 정규표현식: 비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.
                const regExp_pw = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]).{8,16}$/;
                //전화번호에 대한 정규표현식: 전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다
                const regExp_phone =/010-\d{4}-\d{4}/;

                if(frm_join.member_id.value.length == 0){
                    alert("아이디가 입력되지 않았습니다.")
                    frm_join.member_id.focus();

                }else if(!regExp_id.test(frm_join.member_id.value)){
                    alert("아이디 체크 버튼을 눌러주세요.");
                    frm_join.member_id.focus();

                }else if(frm_join.member_pw.value.length == 0){
                    alert("비밀번호가 입력되지 않았습니다.");
                    frm_join.member_pw.focus();

                }else if(!regExp_pw.test(frm_join.member_pw.value)){
                    alert("비밀번호는 8글자와 16글자 사이의 형태로 영문자, 숫자, 특수문자가 1개 이상 포함되어야 합니다.");
                    frm_join.member_pw.focus();

                }else if(frm_join.member_add.value.length == 0){
                    alert("주소가 입력되지 않았습니다.");
                    frm_join.member_add.focus();
                }
                else if(frm_join.member_name.value.length == 0){
                    alert("이름이 입력되지 않았습니다.");
                    frm_join.member_name.focus();

                }else if(frm_join.email.value.length == 0){
                    alert("이메일이 입력되지 않았습니다.");
                    frm_join.email.focus();
                
                }else if(frm_join.handphone.value.length == 0){
                    alert("핸드폰 번호가 입력되지 않았습니다.");
                    frm_join.handphone.focus();

                }else if(!regExp_phone.test(frm_join.handphone.value)){
                    alert("전화번호는 010-xxxx-xxxx 의 형태로 입력되어야 합니다.");
                    frm_join.handphone.focus();
                }else{
                    valid = true;
                    alert("회원가입이 정상적으로 이루어졌습니다.");
                }
                if(!valid){
                    e.preventDefault();
                    e.stopPropagation();
                }
            });
        };


