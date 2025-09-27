#!/bin/bash

gmsh geometria.geo -2 -o malha.msh -format msh2
dolfin-convert malha.msh malha.xml