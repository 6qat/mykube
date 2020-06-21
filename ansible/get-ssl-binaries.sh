#!/bin/bash

wget -q --show-progress --timestamping -P bin/ https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssl
wget -q --show-progress --timestamping -P bin/ https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssljson

chmod a+x bin/cfssl bin/cfssljson
