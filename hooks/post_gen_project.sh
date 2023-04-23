#!/usr/bin/env bash
mv LICENSE.{{ cookiecutter.license_spdx }}.txt LICENSE
rm LICENSE.*.txt
pdm install
