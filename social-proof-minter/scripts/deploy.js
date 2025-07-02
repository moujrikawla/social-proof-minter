const {ethers}=require("hardhat");
async function main(){
    const Contract=await ethers.getContractFactory("SocialProofNFT");
    const c=await Contract.deploy();
    await c.waitForDeployment();
    console.log("address:",await c.getAddress());
}
main();
