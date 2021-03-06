/*
    Copyright (C) 2014 Aseman
    http://aseman.co

    HyperBus is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    HyperBus is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef HYPERBUS_MACROS_H
#define HYPERBUS_MACROS_H

#define CLIENT_MSG_PREFIX QByteArray("0:")
#define SERVER_MSG_PREFIX QByteArray("1:")

#define SMART_LAYER_SEND_MSG_PREFIX QByteArray("0:")
#define SMART_LAYER_NEXT_MSG_PREFIX QByteArray("1:")
#define SMART_LAYER_SEND_MSG_END QByteArray("|")
#define SMART_LAYER_SEND_MSG_NOT_END QByteArray("_")

#define MAXIMUM_MSG_SIZE  1024*16

#endif // HYPERBUS_MACROS_H
