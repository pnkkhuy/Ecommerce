/**
 * 
 */
$(document).ready(function () {
	if(action == 'update') {
		var files = [];
		var filesInfo = [];
				
		$.ajax({
	          url: linkGetImageIDsByProductID,
	          type: 'GET',
	          async: false,
	          contentType: "application/json",
	          success: function(result){
	        	  $.each(result, function(i, field){
	              	var img = $('<img>').attr('src', linkGetImage + field);	        		  
	          		files.push(img.get(0).src);
	          		var item = {};
	          		item.url = linkDeleteImage;
	          		item.key = field;
	          		filesInfo.push(item);
	              });
	          }
	    });				
		
	    $("#kv-explorer").fileinput({
	        'theme': 'explorer-fa', 
	        showUpload: false, // hide upload button
	        overwriteInitial: false,
	        initialPreviewAsData: true,
	        fileActionSettings : {
	        	showUpload : false, // Hide upload button in thumbnail images
	        },
	        allowedFileExtensions: ["jpg", "png"],
	    	initialPreview: files,
	    	initialPreviewConfig: filesInfo
	    });
	} else {
		$("#kv-explorer").fileinput({       
	        showUpload: false, // hide upload button
	        initialPreviewAsData: true,
	        allowedFileExtensions: ["jpg", "png"],
	        fileActionSettings : {
	        	showUpload : false, // Hide upload button in thumbnail images
	        },
	    });
	}
	
});