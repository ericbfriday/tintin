#include "tintin.h"
#define TINTIN_FD_ZERO(p) memset((p), 0, sizeof(*(p)))
/******************************************************************************
*   This file is part of TinTin++                                             *
*                                                                             *
*   Copyright 2004-2020 Igor van den Hoven                                    *
*                                                                             *
*   TinTin++ is free software; you can redistribute it and/or modify          *
*   it under the terms of the GNU General Public License as published by      *
*   the Free Software Foundation; either version 3 of the License, or         *
*   (at your option) any later version.                                       *
*                                                                             *
*   This program is distributed in the hope that it will be useful,           *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of            *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             *
*   GNU General Public License for more details.                              *
*                                                                             *
*   You should have received a copy of the GNU General Public License         *
*   along with TinTin++.  If not, see https://www.gnu.org/licenses.           *
******************************************************************************/

/******************************************************************************
*                               T I N T I N + +                               *
*                                                                             *
*                      coded by Igor van den Hoven 2006                       *
******************************************************************************/

#include "tintin.h"

#include <sys/types.h>
#include <sys/time.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/un.h>
#include <sys/socket.h>
#include <signal.h>

#define TIMER_UPDATE_INPUT               0
#define TIMER_UPDATE_SESSIONS            1
#define TIMER_UPDATE_DELAYS              2
#define TIMER_UPDATE_DAEMON              3
#define TIMER_UPDATE_CHAT                4
#define TIMER_UPDATE_PORT                5
#define TIMER_UPDATE_TICKS               6
#define TIMER_UPDATE_PATHS               7
#define TIMER_UPDATE_PACKETS             8
#define TIMER_UPDATE_TERMINAL            9
#define TIMER_UPDATE_TIME               10
#define TIMER_UPDATE_MEMORY             11
#define TIMER_STALL_PROGRAM             12
#define TIMER_CPU                       13


#define PULSE_PER_SECOND               100

#define PULSE_UPDATE_INPUT               1
#define PULSE_UPDATE_SESSIONS            1
#define PULSE_UPDATE_DELAYS              1
#define PULSE_UPDATE_DAEMON              1
#define PULSE_UPDATE_CHAT               10
#define PULSE_UPDATE_PORT               10
#define PULSE_UPDATE_TICKS              10
#define PULSE_UPDATE_PATHS              10
#define PULSE_UPDATE_PACKETS            10
#define PULSE_UPDATE_TERMINAL           10
#define PULSE_UPDATE_MEMORY             10
#define PULSE_UPDATE_TIME                5

long long cpu_timer[TIMER_CPU][5];

extern void update_input(void);
extern void update_sessions(void);
extern void update_daemon(void);
extern void update_chat(void);
extern void update_port(void);
extern void tick_update(void);
extern void delay_update(void);
extern void path_update(void);
extern void packet_update(void);
extern void terminal_update(void);
extern void memory_update(void);
extern void time_update(void);

extern long long display_timer(struct session *ses, int timer);
extern void open_timer(int timer);
extern void close_timer(int timer);


