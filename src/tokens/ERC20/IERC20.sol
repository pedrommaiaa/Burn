// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.4 < 0.9.0;


/// @dev Interface of the ERC20 standard as defined in the EIP.
interface IERC20 {

    /// @dev Emitted when `value` tokens are moved from one account (`from`) to
    /// another (`to`).
    /// 
    /// Note that `value` may be zero.
    event Transfer(address indexed from, address indexed to, uint256 amount);

    /// @dev Emitted when the allowance of a `spender` for an `owner` is set by
    /// a call to {approve}. `value` is the new allowance.
    event Approval(address indexed owner, address indexed spender, uint256 amount);
        
    /// @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
    /// 
    /// Returns a boolean value indicating whether the operation succeeded.
    /// 
    /// IMPORTANT: Beware that changing an allowance with this method brings the risk
    /// that someone may use both the old and the new allowance by unfortunate
    /// transaction ordering. One possible solution to mitigate this race
    /// condition is to first reduce the spender's allowance to 0 and set the
    /// desired value afterwards:
    /// https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    /// 
    /// Emits an {Approval} event.
    function approve(address spender, uint256 amount) external returns (bool);

    /// @dev Moves `amount` tokens from the caller's account to `to`.
    /// 
    /// Returns a boolean value indicating whether the operation succeeded.
    /// 
    /// Emits a {Transfer} event. 
    function transfer(address to, uint256 amount) external returns (bool);

    
    /// @dev Moves `amount` tokens from `from` to `to` using the
    /// allowance mechanism. `amount` is then deducted from the caller's
    /// allowance.
    /// 
    /// Returns a boolean value indicating whether the operation succeeded.
    /// 
    /// Emits a {Transfer} event.
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}
