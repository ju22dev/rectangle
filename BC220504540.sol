// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;
contract RectangleArea {
    uint256 private width;
    uint256 private height;
    bool private widthSet;
    bool private heightSet;

    // Set width (must be > 0)
    function setWidth(uint256 w) public {
        require(w > 0, "Width must be greater than zero");
        width = w;
        widthSet = true;
    }

    // Set height (must be > 0)
    function setHeight(uint256 h) public {
        require(h > 0, "Height must be greater than zero");
        height = h;
        heightSet = true;
    }

    // Calculate area, only if both width and height are provided
    function area() public view returns (uint256) {
        require(widthSet, "Width not set yet");
        require(heightSet, "Height not set yet");
        return width * height;
    }

    // Optional getter functions
    function getWidth() public view returns (uint256) {
        return width;
    }

    function getHeight() public view returns (uint256) {
        return height;
    }
}
