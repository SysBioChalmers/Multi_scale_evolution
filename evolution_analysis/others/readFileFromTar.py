# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import tarfile,os
import sys
tar = tarfile.open("/Users/luho/Documents/test.tar")
for member in tar.getmembers():
    f=tar.extractfile(member)
    content=f.read()
    print ("%s has %d characters" % (member, len(content)))
    sys.exit()
tar.close()