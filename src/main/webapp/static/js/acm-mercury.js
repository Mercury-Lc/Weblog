//search by category
function changeSearch(obj) {
				// 				var record_category = obj.options[obj.options.selectedIndex].innerHTML;
				var record_category = obj.options[obj.options.selectedIndex].value;
				// 				alert(record_category);
				$.ajax({
					url: "/acm-event/record/getRecordByCategory?record_category=" + record_category,
					// 					data:{"record_category":record_category},
					method: "GET",
					dataType: "JSON",
					success: function(data) {
						$("#acm_event_list").empty();
						var str = "";
						str += '<table class="table table-hover text-center">' +
							'<tr>' +
							'<th width="100" style="text-align:left; padding-left:20px;">ID</th>' +
							'<th width="10%">排序</th>' +
							'<th>图片</th>' +
							'<th>名称</th>' +
							'<th>分类</th>' +
							'<th>时期</th>' +
							'<th width="10%">更新时间</th>' +
							'<th width="310">操作</th>' +
							'</tr>'
						if(data != null && data != "") {
							for(var i = 0; i < data.length; i++) {
								str +=
									'<tr>' +
									'<td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />' + data[i].record_id +
									'</td>' +
									'<td><input type="text" name="sort[1]" value="' + (i + 1) + '" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>' +
									'<td width="10%"><img src="' + data[i].record_imgurl + '" alt="" width="70" height="50" /></td>' +
									'<td>' + data[i].record_title + '</td>' +
									'<td>' +
									'<font color="#00CC99">' + data[i].record_category + '</font>' +
									'</td>' +
									'<td>' + data[i].record_date + '</td>' +
									'<td>' + 'N' + '</td>' +
									'<td>' +
									'<div class="button-group">' +
									'<a class="button border-main" href="#" data-toggle="click" data-target="#edit-recod" data-mask="1" data-width="50%"><span class="icon-edit"></span> 修改</a>' +
									'<a class="button border-red" href="javascript:void(0)" onclick="deleteRecord(' + data[i].record_id + ')"><span class="icon-trash-o"></span> 删除</a>' +
									'</div>' +
									'</td>' +
									'</tr>'
							}
						}
						str += '<tr>' +
							'<td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall" /> 全选 </td>' +
							'<td colspan="7" style="text-align:left;padding-left:20px;">' +
							'<a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a>' +
							'<a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a>' +
							'</td></tr></table>'
						$("#acm_event_list").html(str);

					},
					error: function(err) {
						alert("system error");
						console.log(err);
					}
				})
			}
//delete only one
function deleteRecord(record_id) {

				if(confirm("您确定要删除吗?")) {
					$.ajax({
						url: "/acm-event/record/deleteRecord",
						method: "POST",
						data: {
							"record_id": record_id
						},
						dataType: "JSON",
						success: function(data) {
							if(data == 'OK') {
								alert("delete success!");
								window.location.reload();
							} else {
								alert("fail");
								window.location.reload();
							}
						},
						error: function(err) {
							alert("system error");
							console.log(err);
						}
					})
				} else {
						console.log("noproblem");
				}
			}
			

			