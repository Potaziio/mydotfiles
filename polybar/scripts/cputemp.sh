#!/usr/bin/env bash

sensors | awk '/Core 0:/ {print $3}'

