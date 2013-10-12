#!/usr/bin/env python

import sys
import os
#import shutil 

files = {
	'bashrc' : '~/.bashrc',
	'inputrc' : '~/.inputrc',
	'profile' : '~/.profile',	
	'nanorc' : '~/.nanorc',
}


cur_dir = os.path.dirname(sys.argv[0])

for file in files:
	move_path = files[file]	
	file = cur_dir+'/data/'+file	
	os.system('cp '+file+' '+move_path+'')
