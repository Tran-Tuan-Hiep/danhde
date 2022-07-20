#!/usr/bin/env bash

EMAIL_SENDER="trantuanhiep07022001@gmail.com"
GOOGLE_APP_PASSWORD="detygjikzzybftfk"
EMAIL_RECEIVER="trantuanhiep07022001@gmail.com"
SUBJECT="Danh de thoi !!!"
BODY="Danh cho con 72,27 moi con 5 chuc"
        curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
        --mail-from $EMAIL_SENDER \
        --mail-rcpt $EMAIL_RECEIVER \
        --user $EMAIL_SENDER:$GOOGLE_APP_PASSWORD \
        -T <(echo -e "From: Anonymous
To: $EMAIL_RECEIVER
Subject: $SUBJECT
  $BODY")