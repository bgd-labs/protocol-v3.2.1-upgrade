// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {UpgradeTest} from './UpgradeTest.t.sol';
import {DeploymentLibrary} from '../scripts/Deploy.s.sol';
import {Payloads} from './Payloads.sol';

contract GnosisTest is UpgradeTest('gnosis', 36422910) {
  function _getPayload() internal virtual override returns (address) {
    return DeploymentLibrary._deployGnosis();
  }

  function _getDeployedPayload() internal virtual override returns (address) {
    return Payloads.GNOSIS;
  }

  function _getDeprecatedPDP() internal virtual override returns (address) {
    return address(0xF4EbEEC27ef030A543Ae9b392d12fe63f87F6C4A);
  }
}
