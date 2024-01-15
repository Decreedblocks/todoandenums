// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tryingoutenums {
    //enum representing shipping status
    enum status{
        pending,
        shipped,
        accepted,
        rejected,
        canceled
    }
    //default value is the first element listed in 
    //definition of the type,in this case "pending"
        status public currentstatus;
    function get()public view returns (status) {
        return currentstatus;
    }
    //update status by passing uint into input
    function set(status _status) public {
        currentstatus = _status;
    }
    //update a specific enum
    function cancel() public {
        currentstatus = status.canceled;
    }
    //delete resets the enum to its first value, 0
    function reset() public {
        delete currentstatus;
    }


}

