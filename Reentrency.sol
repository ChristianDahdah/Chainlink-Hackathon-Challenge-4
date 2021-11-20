// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
    
    interface otherContract {
        function callengeFour(address calledContract, address winner) external;
    }
    
    contract CallMe {
    
    int entrance = 0;
    otherContract cont = otherContract(0xAc7E321ba4D4821Fa2259A166eF17044a7F2d521);
    address meCont = address(this);
    address me = 0x0b7fe387d95Fe047025DB8d533DCFC016C527eD8;

    function callMe() public {
        
        if (entrance == 0) {
            entrance = 1;
            cont.callengeFour(meCont, me);
        }
    
        
    }
    
}
