pragma solidity ^0.4.20;

import "./Stoppable.sol";

/**
 *Base for contracts that ability to record on the History Wall.
 *
 *license GNU General Public License 3.0, http:www.gnu.org/licenses/gpl-3.0.en.html
 *@author Sangphil Kim, https://www.linkedin.com/in/sangphilkim/
 */

contract Historywall is Stoppable {

    event LogRecordedEvents(address writeSender, string messages, uint totalevents);

    uint public totalEvents;

    mapping (uint => uint) public blockshot;

    function Historywall(string _historyevent) public {
        totalEvents += 1;

        emit LogRecordedEvents(msg.sender, _historyevent, totalEvents);
        blockshot[totalEvents] = block.number;

    }
}
