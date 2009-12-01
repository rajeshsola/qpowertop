/*
 * Copyright 2007, Intel Corporation
 *
 * This file is part of PowerTOP
 *
 * This program file is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program in a file named COPYING; if not, write to the
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authors:
 * 	Arjan van de Ven <arjan@linux.intel.com>
 */

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sys/types.h>
#include <dirent.h>
#include <ncurses.h>
#include <time.h>
#include <wchar.h>

#include "powertop.h"

char status_bar_slots[10][40];

void show_cstates(void) 
{
	int i, count = 0;

	for (i=0; i < 10; i++) {
                //if (i == topcstate+1)
                        //wattron(cstate_window, A_BOLD);
                //else
                        //wattroff(cstate_window, A_BOLD);
		if (strlen(cstate_lines[i]) && count <= 6) {
                        //print(cstate_window, count, 0, "%s", cstate_lines[i]);
			count++;
		}
	}

	for (i=0; i<5; i++) {
                //if (i == topfreq+1)
                        //wattron(cstate_window, A_BOLD);
                //else
                        //wattroff(cstate_window, A_BOLD);
                //print(cstate_window, i, 38, "%s", cpufreqstrings[i]);
	}

        //wrefresh(cstate_window);
}


void show_acpi_power_line(double rate, double cap, double capdelta, time_t ti)
{
	char buffer[1024];

	sprintf(buffer,  _("no ACPI power usage estimate available") );

        if (rate > 0.001) {
		char *c;
		sprintf(buffer, _("Power usage (ACPI estimate): %3.1fW (%3.1f hours)"), rate, cap/rate);
		strcat(buffer, " ");
		c = &buffer[strlen(buffer)];
		if (ti>180 && capdelta > 0)
			sprintf(c, _("(long term: %3.1fW,/%3.1fh)"), 3600*capdelta / ti, cap / (3600*capdelta/ti+0.01));
	} 
	else if (ti>120 && capdelta > 0.001)
		sprintf(buffer, _("Power usage (5 minute ACPI estimate) : %5.1f W (%3.1f hours left)"), 3600*capdelta / ti, cap / (3600*capdelta/ti+0.01));

        //print(acpi_power_window, 0, 0, "%s\n", buffer);
}

void show_wakeups(double d, double interval, double C0time)
{
        //if (d <= 25.0)
                //wbkgd(wakeup_window, COLOR_PAIR(PT_COLOR_YELLOW));
        //if (d <= 10.0)
                //wbkgd(wakeup_window, COLOR_PAIR(PT_COLOR_GREEN));

	/* 
	 * if the cpu is really busy.... then make it blue to indicate
	 * that it's not the primary power consumer anymore 
	 */
        //if (C0time > 25.0)
                //wbkgd(wakeup_window, COLOR_PAIR(PT_COLOR_BLUE));
		
        //print(wakeup_window, 0, 0, _("Wakeups-from-idle per second : %4.1f\tinterval: %0.1fs\n"), d, interval);
}

void show_timerstats(int nostats, int ticktime)
{
	int i;

	if (!nostats) {
		int counter = 0;
                //print(timerstat_window, 0, 0, _("Top causes for wakeups:\n"));
                //for (i = 0; i < linehead; i++)
                        //if (lines[i].count > 0 && counter++ < maxtimerstats) {
                                //if ((lines[i].count * 1.0 / ticktime) >= 10.0)
                                        //wattron(timerstat_window, A_BOLD);
                                //else
                                        //wattroff(timerstat_window, A_BOLD);
                                //if (showpids)
                                        //print(timerstat_window, i+1, 0," %5.1f%% (%5.1f)   [%6s] %s \n", lines[i].count * 100.0 / linectotal,
                                                //lines[i].count * 1.0 / ticktime,
                                                //lines[i].pid, lines[i].string);
                                //else
                                        //print(timerstat_window, i+1, 0," %5.1f%% (%5.1f)   %s \n", lines[i].count * 100.0 / linectotal,
                                                //lines[i].count * 1.0 / ticktime,
                                                //lines[i].string);
                                //}
        //} else {
                //if (geteuid() == 0) {
                        //print(timerstat_window, 0, 0, _("No detailed statistics available; please enable the CONFIG_TIMER_STATS kernel option\n"));
                        //print(timerstat_window, 1, 0, _("This option is located in the Kernel Debugging section of menuconfig\n"));
                        //print(timerstat_window, 2, 0, _("(which is CONFIG_DEBUG_KERNEL=y in the config file)\n"));
                        //print(timerstat_window, 3, 0, _("Note: this is only available in 2.6.21 and later kernels\n"));
                //} else
                        //print(timerstat_window, 0, 0, _("No detailed statistics available; PowerTOP needs root privileges for that\n"));
	}


}

void show_suggestion(char *sug)
{
        //print(suggestion_window, 0, 0, "%s", sug);
}
