# -*- coding: utf-8 -*-
import os, sys
from mtw.worker import app

if getattr(sys, 'frozen', False):
    app.static_folder = os.path.join(os.path.dirname(sys.executable), 'static')
    app.template_folder = os.path.join(os.path.dirname(sys.executable), 'templates')

app.run(port=5903,debug=True,threaded=False)