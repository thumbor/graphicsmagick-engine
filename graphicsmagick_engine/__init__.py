#!/usr/bin/env python
# -*- coding: utf-8 -*-

import logging

__version__ = '0.1.1'

try:
    from graphicsmagick_engine.engine import Engine  # NOQA
except ImportError:
    logging.exception('Could not import graphicsmagick_engine. Probably due to setup.py installing it.')
