#!/bin/env python3

import dbus
from sys import exit

if __name__ == "__main__":

    bus = dbus.SystemBus()

    props_iface = "org.freedesktop.DBus.Properties"

    nm_bus = "org.freedesktop.NetworkManager"
    nm_obj = "/org/freedesktop/NetworkManager"
    nm_iface = "org.freedesktop.NetworkManager"

    nm = bus.get_object(nm_bus, nm_obj)

    nm_conn_type = nm.Get(
        nm_iface,
        "PrimaryConnectionType",
        dbus_interface = props_iface
    )
    if nm_conn_type != "802-11-wireless":
        print("Primary connection is not Wi-Fi")
        exit(1)

    nm_conn_obj = nm.Get(
        nm_iface,
        "PrimaryConnection",
        dbus_interface = props_iface
    )
    nm_conn = bus.get_object(nm_bus, nm_conn_obj)
    nm_conn_iface = "org.freedesktop.NetworkManager.Connection.Active"

    nm_ap_obj = nm_conn.Get(
        nm_conn_iface,
        "SpecificObject",
        dbus_interface = props_iface
    )
    nm_ap_iface = "org.freedesktop.NetworkManager.AccessPoint"
    nm_ap = bus.get_object(nm_bus, nm_ap_obj)

    nm_ap_strength = nm_ap.Get(nm_ap_iface, "Strength", dbus_interface = props_iface)
    if nm_ap_strength == None:
        print("Failed to get connection strength")
        exit(2)

    print(int(nm_ap_strength))
