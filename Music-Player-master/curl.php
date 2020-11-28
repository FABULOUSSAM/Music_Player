<?php 
    require_once('vendor/autoload.php'); 
    use YouTube\YouTubeDownloader;
    $yt = new YouTubeDownloader();

        $yt_id=array();$name=array();
        $img=array();$duration=array();

        if(isset($_POST['elem'])){
            $elem=$_POST['elem'];
            $str="https://freemp3downloads.online/download?url=".$elem;
            $doc = new DOMDocument();
            libxml_use_internal_errors(true);

            $doc->loadHTMLFile($str);
            
            foreach($doc->getElementsByTagName('img') as $a) {
                if ($a->getAttribute('class') === 'card-img-top') {
                    array_push($img,$a->getAttribute('src'));
                    array_push($name,$a->getAttribute('alt'));
                }
            }

            foreach($doc->getElementsByTagName('small') as $a) {
                if ($a->getAttribute('class') === 'text-muted') 
                    array_push($duration,$a->nodeValue);
            }

            foreach($doc->getElementsByTagName('a') as $a) {
                if ($a->getAttribute('class') === 'card-link') {
                    $parts = explode('?url=', $a->getAttribute('href'));
                    array_push($yt_id,$parts[1]);
                }
            }

            // for ($i=0; $i<count($yt_id) ; $i++)
            // echo $name[$i].' '.$img[$i].' '.$yt_id[$i].'<br>';

            $links = $yt->getDownloadLinks("https://www.youtube.com/watch?v=".$yt_id[0]);
           
            //Print Links
            //var_dump($links);
            
            $audio=end($links);
            
            $url=$conn->real_escape_string($audio['url']);

            $name=$conn->real_escape_string($name[0]);
            $name=substr($name,0,49);

            $thumbnail=$conn->real_escape_string($img[0]);
            $duration=$conn->real_escape_string($duration[0]);

            $apikey='AIzaSyB-eKGajc-VEie5xkPa4v5rDmLoMbM85A4';
            $googleApiUrl='https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics&id='.$yt_id[0].'&key='.$apikey;
            
            $ch = curl_init();
            
            curl_setopt($ch, CURLOPT_HEADER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_URL, $googleApiUrl);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
            curl_setopt($ch, CURLOPT_VERBOSE, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            $response = curl_exec($ch);
                
            curl_close($ch);
                
            $data = json_decode($response);
            $data = json_decode(json_encode($data), true);

            $date=$data['items'][0]['snippet']['publishedAt'];
            $date=explode('T',$date);
            $date=$date[0];

            $likes=$data['items'][0]['statistics']['likeCount'];
        
            $sql="INSERT INTO `music`(`name`,`thumbnail`,`src`,`duration`,`release_date`,`likes`) VALUES ('$name','$thumbnail','$url','$duration','$date','$likes');";
            // $result=$conn->query($sql);
           
            if($result=$conn->query($sql))
                $id=$conn->insert_id;
            else{
                $sql="SELECT * FROM `music` WHERE `name`='$name'";
                $result=$conn->query($sql);
                $row=$result->fetch_row();
                $id=$row[0];
            }
                
            header("Location:/Music-Player-master/play.php?id=".$id);    
        }
?>
