#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Step3: calculating the alien index score to predict HGT events.

import math

e_minus = 1e-200

alienindex_min = math.log(7e-48+e_minus, math.e)-math.log(4e-95+e_minus, math.e)

alienindex_max = math.log(1+e_minus, math.e)-math.log(0+e_minus, math.e)

alienindex2 = math.log(1e-10000+e_minus, 10) - math.log(1+e_minus, 10)

minus = math.log(e_minus, 10)

print(alienindex_min)

print(alienindex_max)

# Results:
# -460.51701859880916
# 460.51701859880916