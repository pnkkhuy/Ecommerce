/**
 * 
 */

$(document).ready(function () {
    $("#kv-explorer").fileinput({
        'theme': 'explorer-fa',
        'uploadUrl': '#',
        //overwriteInitial: false,
        showUpload: false, // hide upload button
        initialPreviewAsData: true,
        fileActionSettings : {
        	// Disable
        	showUpload : false, // Hide upload button in thumbnail images
        },
//        initialPreview: [
//            "http://lorempixel.com/1920/1080/nature/1",
//            "http://lorempixel.com/1920/1080/nature/2",
//            "http://lorempixel.com/1920/1080/nature/3"
//        ],
//        
//        initialPreviewConfig: [
//            {caption: "nature-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
//            {caption: "nature-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
//            {caption: "nature-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
//        ]
    });
    /*
     $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
     alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
     });
     */
});