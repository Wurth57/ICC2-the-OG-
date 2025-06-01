#!/bin/bash

# my_network_tool.sh
# Ferramenta de rede interativa simples
# Função para mostrar o menu
show_menu() {
    echo "===== My Network Tool ====="
    echo "1) Check Network Interface Information"
    echo "2) Ping a Host"
    echo "3) Port Scan with Nmap"
    echo "4) Display Routing Table"
    echo "5) Traceroute to Host"
    echo "6) Exit"
    echo "==========================="
}

# Loop principal
while true; do
    show_menu
    read -p "Select an option [1-6]: " choice

    case "$choice" in
        1)
            echo "--- Network Interface Information ---"
            ip a
            echo ""
            ;;
        2)
            read -p "Enter hostname or IP to ping: " host
            echo "--- Pinging $host ---"
            ping -c 4 "$host"
            echo ""
            ;;
        3)
            read -p "Enter host to scan: " target
            echo "--- Scanning $target with Nmap ---"
            if command -v nmap >/dev/null 2>&1; then
                nmap "$target"
            else
                echo "Error: Nmap is not installed."
            fi
            echo ""
            ;;
        4)
            echo "--- Displaying Routing Table ---"
            ip route
            echo ""
            ;;
        5)
            read -p "Enter host for traceroute: " tracehost
            echo "--- Traceroute to $tracehost ---"
            if command -v traceroute >/dev/null 2>&1; then
                traceroute "$tracehost"
            else
                echo "Error: traceroute is not installed."
            fi
            echo ""
            ;;
        6)
            echo "Exiting... Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 6."
            ;;
    esac
done