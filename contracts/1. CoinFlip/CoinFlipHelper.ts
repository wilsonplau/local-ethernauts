const helper = async (_victim: any, attacker: any) => {
  // add code here that will help you pass the test
  for (let i = 0; i < 10; i++) {
    const tx = await attacker.hackContract();
    await tx.wait();
  }
};

export default helper;
