# zkp_background_assignment

# A. Conceptual Knowledge

## 1. What is a smart contract? How are they deployed? You should be able to describe how a smart contract is deployed and the necessary steps.

A smart contract is the program which is executed when some conditions are met. This contract is recorded in a blockchain, and anybody can know the conditions and the executed results.

You can deploy a smart contract (written in solidity) with following steps.

1. Compile the contract.
2. Create a transaction with the compiled data which is created in step.1.

## 2. What is gas? Why is gas optimization such a big focus when building smart contracts?

Gas represents how much you consume the blockchain network and computational power in a transaction.
For example, changing a state costs high gas because the all machines which is joining the blockchain network share the state and every single machine changes the state. Each computational process allocates gas, and transaction fees are determined based on gas. The less gas a smart contract consumes, the less cost the transaction creator pays. That's why gas optimization is important.

## 3. What is a hash? Why do people use hashing to hide information?

A hash is cryptographic function which encrypts any inputs. The length of the output is fixed, and the output is irreversible, so it is practically impossible to decrypt the output. These features are useful to hide information. First of all, as mentioned, it is impossible to get the initial input from the output. Also, it is easy to handle fixed-length data. Especially, when you storage some long-length string in blockchain, it costs a lot of gas.

## 4. How would you prove to a colorblind person that two different colored objects are actually of different colors? You could check out Avi Wigderson talk about a similar problem here.

The conditions are followings.

- There are a prover and verifier(colorblind person).
- There are two identical objects but their colors are different (red and blue).
- The verifier labels the objects (attach number or something), and only the verifier can distinguish them, which the prover distinguish the objects by only their color.

In order to prove that there are two different colored objects, following steps are required.

1. The verifier shows one of the objects to the prover
2. The prover tells its color to the verifier.
3. repeat this steps.

In the first challenge, the prover cannot prove anything, but the verifier can link the color and the label. For example, red is label 1, which means blue is label 2.
After that, the verifier can check if the answer is correct when the prover tells an answer. Furthermore, every time the prover tells the correct answer, the probability that the objects have different colors increases.
