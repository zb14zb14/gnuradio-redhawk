# This file is protected by Copyright. Please refer to the COPYRIGHT file
# distributed with this source distribution.
#
# This file is part of Geon's GNURadio-REDHAWK.
#
# GNURadio-REDHAWK is free software: you can redistribute it and/or modify it under
# the terms of the GNU Lesser General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option) any
# later version.
#
# GNURadio-REDHAWK is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
# details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.
#
FROM geontech/redhawk-ubuntu-runtime:2.0.6
LABEL name="GNURadio and REDHAWK SDR Runtime" \
    description="REDHAWK SDR with GNURadio installed"

# Install GNURadio, Geon's data ports
COPY integ/gr-redhawk_integration_python /root/gr-redhawk_integration_python
COPY common/ /
RUN /root/gnuradio-install.sh
RUN /root/gr-redhawk-integ-install.sh

