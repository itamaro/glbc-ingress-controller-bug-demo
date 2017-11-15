#!/usr/bin/env python

from flask import Flask


APP = Flask(__name__)


@APP.route('/')
def bad_index():
    return 'You shall not pass!', 403


@APP.route('/healthz')
def health_check():
    return 'OK'


if '__main__' == __name__:
    APP.run(host='0.0.0.0', port=5000, debug=True)
