#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
# @author djangowang@tencent.com 
# @from http://blog.puppeter.com/read.php?7

from plugin_base import plugin_base
import sys

class plugin_tree(plugin_base):
    def __init__(self):
        plugin_base.__init__(self)

    def process(self, options, args):   
        self.checkparam("tree",options,args)
        
        options_arr ={}
        if options['q'] != None:
                parameter="cstring="+options['q']
                signature=options['q']
                url= self.build_tree_url(options['q'])
		if options['d'] == True:
			print url
		cstring= self.curl_get_contents(url, None, self.host).split("|")
		if options['j'] != None:
			ret=self.output_format(cstring,options)
			print ret
		else: 
			print options['q']
			for ip in cstring:
				print "|-- "+ip
        # disable cstring log    
        if options['o'] == True:
            sys.exit(0) 

        log_command="clip tree -q "+options['q'] 
        self.history_upload(log_command) 
        sys.exit(0) 
