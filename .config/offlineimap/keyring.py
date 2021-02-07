#!/usr/bin/env python3
# ~/.config/offlineimap/keyring.py

import re
import os


def get_password(login):
    machine = "127.0.0.1"
    port = "1143"
    s = "machine %s port %s login %s password ([^ ]*)\n" % (
        machine,
        port,
        login,
    )
    p = re.compile(s)
    authinfo = os.popen(
        "gpg -q --no-tty -d ~/.authinfo.gpg"
    ).read()
    return p.search(authinfo).group(1)
