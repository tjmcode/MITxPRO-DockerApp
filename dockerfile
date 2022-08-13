#      Title:    MicroCODE Dockerfile Template
#      Module:   Modules (./dockerfile)
#      Customer: Internal
#      Creator:  MicroCODE Incorporated
#      Date:     August 2022
#      Author:   Timothy J McGuire
#
#      Designed and Coded: 2022 MicroCODE Incorporated
#
#      This software and related materials are the property of
#      MicroCODE Incorporated and contain confidential and proprietary
#      information. This software and related materials shall not be
#      duplicated, disclosed to others, or used in any way without the
#      written of MicroCODE Incorported.
#
#
#      DESCRIPTION:
#      ------------
#
#      This module implements the MicroCODE's Common HTML Template.
#      This file is copied to start all MicroCODE Web Pages.
#
#
#      REFERENCES:
#      -----------
#
#      1. DOCKER Documentation
#         https://docs.docker.com/docker-hub/
#
#
#
#      MODIFICATIONS:
#      --------------
#
#  Date:         By-Group:   Rev:     Description:
#
#  13-Aug-2022   TJM-MCODE  {0001}    New file for learning DOCKER-ization.
#
#

# use a small NODE.JS image
FROM node:slim

# signature
MAINTAINER tjmcode <tmcguire@mcode.com>

# set container’s working directory
WORKDIR /app

# transfer soruce code to container
COPY index.js /app/index.js
COPY package.json /app/package.json

# install all dependencies
RUN npm install