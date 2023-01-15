#!/bin/bash

sudo cp service.sh /usr/bin/service.sh
sudo chmod +x /usr/bin/service.sh

sudo cp agr_streamlit.service /etc/systemd/system/agr_streamlit.service
sudo chmod 644 /etc/systemd/system/agr_streamlit.service
