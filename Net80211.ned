//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package vanet_its_blockchain;

// numOfHosts: 10
// parametric: true
// static:     false

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import inet.nodes.inet.AdhocHost;
import inet.world.radio.ChannelControl;

network Vanet_its_blockchain
{
    parameters:
        int numHosts;
    submodules:
        host[numHosts]: AdhocHost
        {
            parameters:
                @display("r=,,#707070");
        }

        channelControl: ChannelControl
        {
            parameters:
                @display("p=60,50");
        }

        configurator: IPv4NetworkConfigurator
        {
            @display("p=140,50");
        }
}
