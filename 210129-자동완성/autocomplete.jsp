<%--
참고한 사이트
http://hellogk.tistory.com/74
https://code.i-harness.com/ko/q/252b7c
--%>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>


<script type="text/javascript">
		//검색할 때 입력한 글자만 진하게 나오는 부분
		$(function(){
			
			$.ui.autocomplete.prototype._renderItem = function (ul, item) {
			    item.label = item.label.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + $.ui.autocomplete.escapeRegex(this.term) + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>");
			    return $("<li></li>")
			            .data("item.autocomplete", item)
			            .append("<a>" + item.label + "</a>")
			            .appendTo(ul);
			};
			
			
			//input 태그 id가 name
		    $( "#name" ).autocomplete({
		        source : function( request, response ) {
		             $.ajax({
		                    type: 'post',
		                    url: "list2.do",
		                    dataType: "json",
		                    //request.term = $("#autocomplete").val()
		                    data: { "writer" : $("#name").val()},
		                    //select * from BOARD where writer like %?%;
		                    success: function(data) {
		                        //서버에서 json 데이터 response 후 목록에 뿌려주기 위함
		                        response(
		                            $.map(data, function(item) {
		                            	console.log(item);
												 return {
														label: item.writer+" "+item.email+" "+item.subject,
														value: item.writer
												 }		                               
		                            })
		                        );
		                    }
		               });
		            },
		        //조회를 위한 최소글자수
		        minLength: 1,
		        select: function( event, ui ) {
		            // 만약 검색리스트에서 선택하였을때 선택한 데이터에 의한 이벤트발생
		        }
		    });
		})



</script>