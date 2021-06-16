<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.sJoin{
		margin-top:150px;
	}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
	function breadInsert() {

		if(frm.b_name.value == ""){
			alert("빵의 이름을 입력하세요");
			frm.b_name.focus();
			return false;
		}
		if(frm.b_qty.value == ""){
			alert("수량을 입력하세요");
			frm.b_qty.focus();
			return false;
		}
		if(frm.b_comment.value == ""){
			alert("코멘트를 입력하세요");
			frm.b_comment.focus();
			return false;
		}
		if(frm.s_file.value == ""){
			alert("사진을 첨부해주세요.");
			frm.s_file.focus();
			return false;
		}
		frm.submit();
		alert("메뉴등록이 완료되었습니다.");
	}
</script>

<div class="sJoin" align="center">
	<h3>메뉴 등록하기</h3>

	<div class="container">
	<div class="">
            <form action="breadInserMenuSubmit.do" class="dk-form" method="post" id="frm" enctype="multipart/form-data">
                <div >
                    <div class="col-md-6">
						<input style="width: 50%;" class="form-control" type="text"
							name="b_name" id="b_name" value="" placeholder="Your id" required>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="password" name="b_price"
							 id="b_price" class="form-control" aria-describedby="emailHelp"
							placeholder="빵의 가격을 적어주세요" required>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" class="form-control" type="password" id="b_qty"
							name="b_qty" value=""
							placeholder="하루 생산하는 빵의 갯수 적어주세요">
						<font id="chkNotice" size="2"></font>
					</div>
					<div class="col-md-6">
						<input style="width: 50%;" type="text" name="b_comment"
							id="b_comment" class="form-control" aria-describedby="emailHelp"
							placeholder="빵에 대한 코멘트를 적어주세요" required>
					</div>
					<div class="col-md-6">
                        <input style = "width:50%;" type="file" id="b_image" name="b_image" class="form-control"placeholder="빵 사진">
                    </div>
                    
                </div>
                <br>
                <button class="dk-btn dk-btn-md" type="button" name="sumbit" value="Save" onclick="breadInsert()">Save</button> &nbsp; 
                <button class="dk-btn dk-btn-md" type="reset" name="sumbit">Reset</button>
            </form>
	</div>
	</div>
</div>




    
    