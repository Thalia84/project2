sudo yum install -y httpd 
sudo systemctl start httpd 
sudo systemctl enable httpd 
echo '<h1>This is my first terraform project</h1>' | sudo tee /var/www/html/index.html