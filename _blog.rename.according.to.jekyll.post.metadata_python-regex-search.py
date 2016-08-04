# IMS: _blog.rename.according.to.jekyll.post.metadata_python-regex-search.py
# Using Python because JREPL.bat doesn't do "look-behind" RegEx.
# Accepts file (argv[1]) and regex (argv[2].

# Performs a  regular expression search and prints the result.
# Example: python python-regex.py data.txt "(.*)"
# Tested with Python 3.x. Python 2.x is OK also.
# Modified to work on auto converted Blogger Jekyll posts.

import re, sys, string, os, codecs, random

regex = re.compile(sys.argv[2])

# # ===============================================
# does not always work
# file = open(sys.argv[1], 'r')
# data = file.read()
# file.close()
# # ===============================================

# =================================================
file = codecs.open(sys.argv[1], "r", "utf-8" )
data = file.read() # Returns a Unicode string from the UTF-8 bytes in the file
file.close()
# =================================================

sss = re.findall(regex, data)[0]

# convert to ascii stripping all unicode characters
# converting string to byte object and back to string
sss = sss.encode('ascii', 'ignore')
sss=sss.decode('ascii')

sys.stderr.write("PYTHON RAW: ")
sys.stderr.write(sss)
sys.stderr.write("\n")

# check for empty title
if sss == "":
	sss="[NM]"

# =====================================
# BEGIN CODE FOR OLD AUTOCONVERTED BLOGGER POSTS
# =====================================
# sss = sss.strip('"')
# sss = sss.strip('\'')
# =====================================
# END CODE FOR OLD AUTOCONVERTED BLOGGER POSTS
# =====================================

# =====================================
# BEGIN CODE FOR NEW MARKDOWN POSTS
# post format: title: "name"
# =====================================

# old shit?
# # strip single quote
# sss=sss.strip('\'')
# # replace '' with '
# sss=sss.replace('\'\'','\'')

# strip " from both ends
sss=sss.strip('\"')

# =====================================
# END CODE FOR NEW MARKDOWN POSTS
# =====================================

# carriage return & newline
sss = sss.replace('\\r\\n','')

sys.stderr.write('PYTHON STRIPPED: ')
sys.stderr.write(sss)
sys.stderr.write("\n")

# workaround so this works with windows batch "set /p"
sss = sss.replace('&','_')

#  replace invalid chars
# https://msdn.microsoft.com/en-us/library/aa365247
sss = sss.replace('<','_')
sss = sss.replace('>','_')
sss = sss.replace(':','_')
sss = sss.replace('"','\'')
sss = sss.replace('/','_')
sss = sss.replace('\\','_')
sss = sss.replace('|','_')
sss = sss.replace('?','_')
sss = sss.replace('*','_')

# more formatting
sss = sss.replace(', ',',')
sss = sss.replace(' - ','-')
sss = sss.replace(' _ ','-')
sss = sss.replace('--','-')
sss = sss.replace('_ ','_')
# 2 spaces
sss = sss.replace('  ',' ')

# truncate string
sss=sss[0:50]

# strip leading and ending whitespace
sss=sss.strip()

sys.stderr.write('PYTHON FINAL: ')
sys.stderr.write(sss)
sys.stderr.write("\n")

# append 2 random digits
# sss=sss+str(random.randint(10, 99))

print (sss)