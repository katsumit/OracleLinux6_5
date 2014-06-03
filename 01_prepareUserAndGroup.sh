#!/bin/bash
groupadd -g 1000 oinstall
groupadd -g 1100 asmadmin
groupadd -g 501 dba
groupadd -g 1300 asmdba
useradd -u 1100 -g oinstall -G asmadmin,asmdba,dba grid
useradd -u 501 -g oinstall -G dba,asmdba oracle
