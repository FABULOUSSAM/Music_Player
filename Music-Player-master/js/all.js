// Like Music
function changeHeart(id){
    elem=document.getElementById(id);
    span=document.getElementById("n"+id);
    var flag=0;
    var like;

    if(elem.className=="far fa-heart"){
        elem.className="fas fa-heart";
        flag=1;
        like=parseFloat(span.innerHTML)+1;
    }
    else{
        elem.className="far fa-heart";
        like=parseFloat(span.innerHTML)-1;
    }

    span.innerHTML=" "+like;

    var userdata = {'id':id,'flag':flag};
    $.ajax({
        type: "POST",
        url: "./all.php",
        data:userdata, 
        success: function(){
            console.log("success");
        }
    });
}

function open_modal(id) { 

    var modal = document.getElementById("myModal");
    var btn = document.getElementById("d"+id);
    var span = document.getElementsByClassName("close")[0];

    btn.onclick = function() {
        modal.style.display = "block";

        var userdata = {'did':id};
        $.ajax({
            type: "POST",
            url: "./all.php",
            data:userdata, 
            success: function(data){
                var arr=data.split("\n");
                var source=arr[4].substr(11);
                var title=arr[6].substr(11);
                var artist=arr[8].substr(11);
                var category=arr[10].substr(11);
                var release=arr[12].substr(11);
                var duration=arr[14].substr(11);

                // document.getElementById("dimage").src="music/thumbnail/"+source;
                $('#dimage').attr("src","music/thumbnail/"+source);
                $("#dtitle").html("{ "+title+" }");
                $("#dartist").html("{ "+artist+" }");
                $("#drelease").html("{ "+release+" }");
                $("#dduration").html("{ "+duration+" }");
                $("#dcategory").html("{ "+category+" }");
            }
        });
    }

    $('.close').click(function(){
        modal.style.display = "none";
    });
   
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
}
