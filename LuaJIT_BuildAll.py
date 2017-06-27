#!python
#coding:utf8

import os

def GetFileNameAndExt(filename):
	(filepath,tempfilename) = os.path.split(filename);
	(shotname,extension) = os.path.splitext(tempfilename);

	return shotname,extension

def dirlist(path, allfile):
	filelist =  os.listdir(path)
	os.chdir(path)

	for filename in filelist:
		filepath = os.path.join(path, filename)
		if os.path.isdir(filepath):
			dirlist(filepath, allfile)
			os.chdir(os.pardir)
		else:
			print filepath
			(name, extension) = GetFileNameAndExt(filename)
			if extension!=".lua":
				continue
			#print filename
			luaname = name + ".lua"
			jitname = name + ".jit"
			#print jitname

			luajit_cmd = "luajit -b "+luaname+" "+jitname
			# print luajit_cmd
			os.system(luajit_cmd)

			allfile.append(filepath)
	return allfile

allfiletext =  dirlist("./", [])	