Install ansible:

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user

pip install --user ansible

export PATH=~/.local/bin:$PATH

ansible-playbook playbook.yaml
