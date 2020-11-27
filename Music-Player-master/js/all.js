// Like Music
function abbreviate(num) {
    if (num >= 1000000000)
       return (num / 1000000000).toFixed(2).replace(/\.0$/,'')+'B';
    
    else if (num >= 1000000) 
       return (num / 1000000).toFixed(2).replace(/\.0$/,'')+'M';
    
    else if (num >= 1000) 
       return (num / 1000).toFixed(2).replace(/\.0$/,'')+'K';

    return num.toFixed(2);
}
  
function changeHeart(id){
    elem=document.getElementById(id);
    span=document.getElementById("n"+id);
    var flag=0;
    var like=span.innerHTML;
    var short=like.slice(-1);

    if(short=="0")short="";
    like=like.replace(short,"");

    var suffixes=["","K","M","B","T","Qa","Qi"];
    like=like*Math.pow(1000,suffixes.indexOf(short));
    
    if(elem.className=="far fa-heart"){
        elem.className="fas fa-heart";
        flag=1;
        like=like+1;
    }
    else{
        elem.className="far fa-heart";
        like=like-1;
    }
   
    span.innerHTML=" "+abbreviate(like);

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
                var release=arr[14].substr(11);
                var duration=arr[16].substr(11);

                // document.getElementById("dimage").src="music/thumbnail/"+source;
                if(artist=" ")artist="NULL";
                $('#dimage').attr("src",source);
                $("#dtitle").html(title);
                $("#dartist").html(artist);
                $("#drelease").html(release);
                $("#dduration").html(duration);
                $("#dcategory").html(category);
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
