//****************************************************************************************************************************
//Program name: "Triangles".  Copyright (C) 2022 Keith Sun                                                                   *
//This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
//version 3 as published by the Free Software Foundation.                                                                    *
//This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
//warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
//A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                           *
//****************************************************************************************************************************


//=======1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
//
//Author information
//  Author name: Keith Sun
//  Author email: sqc0401@csu.fullerton.edu
//
//Program information
//  Program name: Triangles
//  Programming languages: One modules in C and one module in X86
//  Date program began: 2022-Feb-05
//  Date of last update: 2022-Feb-05
//  Files in this program: current-time.c, data_and_time.asm
//  Status: The program performs correctly.
//
//
//This file
//   File name: driver.c
//   Language: C++
//
//=======1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
//
//
//
//
//===== Begin code area ===========================================================================================================

#include <cstdio>

extern "C" double compute_triangle();

int main()
{
    double ret = compute_triangle();
    printf("\nASM returned double value: %lf\n", ret);
    return 0;
}
