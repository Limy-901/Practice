<%--
������ ����Ʈ
http://hellogk.tistory.com/74
https://code.i-harness.com/ko/q/252b7c
--%>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>


<script type="text/javascript">
		//�˻��� �� �Է��� ���ڸ� ���ϰ� ������ �κ�
		$(function(){
			
			$.ui.autocomplete.prototype._renderItem = function (ul, item) {
			    item.label = item.label.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + $.ui.autocomplete.escapeRegex(this.term) + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>");
			    return $("<li></li>")
			            .data("item.autocomplete", item)
			            .append("<a>" + item.label + "</a>")
			            .appendTo(ul);
			};
			
			
			//input �±� id�� name
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
		                        //�������� json ������ response �� ��Ͽ� �ѷ��ֱ� ����
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
		        //��ȸ�� ���� �ּұ��ڼ�
		        minLength: 1,
		        select: function( event, ui ) {
		            // ���� �˻�����Ʈ���� �����Ͽ����� ������ �����Ϳ� ���� �̺�Ʈ�߻�
		        }
		    });
		})



</script>