import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oriflame/data/core/constants/firebase_const.dart';
import 'package:oriflame/data/models/account/account.dart';
import '../api/firestore.dart';

final accountServiceProvider = Provider<AccountService>((ref) {
  return AccountService(ref.read(firestoreProvider));
});

class AccountService {
  final FirebaseFirestore _firestore;

  AccountService(this._firestore);

  CollectionReference<Account> get _accountsCollection => _firestore
      .collection(FirebaseConstants.accountCollection)
      .withConverter(
        fromFirestore: (snapshot, _) => Account.fromJson(snapshot.data()!),
        toFirestore: (Account match, _) => match.toJson(),
      );

  Future<List<Account>> fetchPendingAccounts() async {
    final docs = await _accountsCollection
        .where("status", isEqualTo: AccountConnectionStatus.pending.value)
        .get();

    return docs.docs.map((doc) => doc.data()).toList();
  }

  Future<List<Account>> fetchArchivedAccounts() async {
    final docs = await _accountsCollection
        .where("status", isEqualTo: AccountConnectionStatus.declined.value)
        .get();

    return docs.docs.map((doc) => doc.data()).toList();
  }

   Future<void> declineAccount(Account account) async {
    await _accountsCollection.doc(account.id).update({
      "status": AccountConnectionStatus.declined.value,
    });
  }

  Future<void> approveAccount(Account account) async {
    await _accountsCollection.doc(account.id).update({
      "status": AccountConnectionStatus.approved.value,
    });
  }
}
