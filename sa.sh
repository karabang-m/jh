yum install firefox xauth -y 
yum update -y 
yum install wget -y
yum install curl -y
yum install epel-release -y
yum upgrade -y
yum update -y
yum install git -y
yum install python3 python3-pip -y
yum update -y
yum install gpgme gpg gnupg1 -y
yum update -y && yum install xorg-x11-server-Xvfb -y
yum install xorg-x11-fonts-100dpi xorg-x11-fonts-75dpi xorg-x11-fonts-scalable xorg-x11-fonts-cyrillic -y
yum update -y
rm -rf $TMPDIR
mkdir -p $TMPDIR
export DISPLAY=:1
Xvfb :1 -screen 0 1920x1080x24 &
pip3 install selenium
curl -sSL https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz | tar -xvz && chmod +x geckodriver
export DISPLAY=:1 && mv geckodriver /usr/local/bin/ && python3 -c "from selenium import webdriver;import time;driver=webdriver.Firefox();from selenium.webdriver.common.by import By;from selenium.webdriver import ActionChains;from selenium.webdriver.common.keys import Keys;from selenium.webdriver.support.ui import WebDriverWait;a=ActionChains(driver);driver.get('https://pool.tidecoin.exchange/workers/TXU1dhgFRThRCphSHJ1dqaoU6ZoMjrTYL4');time.sleep(3);driver.find_element(By.ID,'start').click();time.sleep(86400);" 
