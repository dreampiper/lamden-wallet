import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LamdenJSNotifier extends ChangeNotifier {
  Future<String> _lamden() async {
    return await rootBundle.loadString("assets/lamden.js");
  }

  Future<String> get newWallet async {
    String lamdenJS = await _lamden();
    String code = lamdenJS +
        """
        //js
            Lamden.wallet.new_wallet()
        ;//
        """;
    return code;
  }

  Future<String> get newWalletBip39 async {
    String lamdenJS = await _lamden();
    String code = lamdenJS +
        """
        //js
            Lamden.wallet.new_wallet_bip39()
        ;//
        """;
    return code;
  }

  Future<String> restoreWalletBip39(
    String mnemonic,
    int derivationIndex,
  ) async {
    String lamdenJS = await _lamden();
    String code = lamdenJS +
        """
        //js
            Lamden.wallet.new_wallet_bip39($mnemonic, $derivationIndex)
        ;//
        """;
    return code;
  }

  Future<String> getPublicKey(String sk) async {
    String lamdenJS = await _lamden();
    String code = lamdenJS +
        """
        //js
            Lamden.wallet.get_vk($sk)
        ;//
        """;
    return code;
  }

  Future<String> sendTransaction(
    String senderSk,
    String senderVk,
    String receiverVk,
    double amount,
    double stamps,
  ) async {
    String lamdenJS = await _lamden();
    String code = lamdenJS +
        """
        //js
            let networkInfo = {
              name: 'Lamden Public Testnet',
              type: 'testnet',
              hosts: ['https://testnet-master-1.lamden.io:443']
            }

            let kwargs: {
              to: $receiverVk,
              amount: $amount
            }

            let txInfo = {
              $senderVk,
              contractName: "currency",
              methodName: "transfer",
              kwargs,
              stampLimit: $stamps
            }

            let tx = new Lamden.TransactionBuilder(networkInfo, txInfo)

            tx.send($senderSk, (res, err) => {
              if (err) throw new Error(err) // set error var to true
              console.log(res.hash)
              tx.checkForTransactionResult()
              .then(res => console.log(res)) // set result to data var
            })
        ;//
        """;
    return code;
  }
}

final lamdenJSProvider = ChangeNotifierProvider<LamdenJSNotifier>(
  (ref) => LamdenJSNotifier(),
);

