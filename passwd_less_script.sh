ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y
if [ $? == 0 ]
then 
ssh-copy-id -i  ansible_user@new_hostname 
echo "id_rsa files are copied remote machine"
else
echo "key is not generated"
fi
