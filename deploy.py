#!/usr/bin/env python

import sys
import os

files = {
	'bashrc'    : '~/.bashrc',
	'inputrc'   : '~/.inputrc',
	'profile'   : '~/.profile',	
	'screenrc'  : '~/.screenrc',	
	'gitconfig' : '~/.gitconfig',	
	'vimrc'     : '~/.vimrc',	
}


cur_dir = os.path.abspath(os.path.dirname(sys.argv[0]))

for file in files:
	move_path = files[file]	
	file = cur_dir+'/data/'+file	
	os.system('rm -f '+move_path);
	os.system('ln -s '+file+' '+move_path+'')
