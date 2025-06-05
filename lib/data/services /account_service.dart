import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oriflame/data/models/account/account.dart';

final accountServiceProvider = Provider<AccountService>((ref) {
  return AccountService();
});

class AccountService {
  Future<List<Account>> fetchPendingAccounts() async {
    await Future.delayed(const Duration(seconds: 2));
    return dummyAccounts
        .where((element) => element.status == AccountConnectionStatus.pending)
        .toList();
  }

  Future<List<Account>> fetchArchivedAccounts() async {
    await Future.delayed(const Duration(seconds: 2));
    return dummyAccounts
        .where((element) => element.status == AccountConnectionStatus.declined)
        .toList();
  }

  final dummyAccounts = [
    Account(
      id: "1",
      name: "John Doe",
      email: "john@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://wa.me/+91 9016206523",
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "2",
      name: "Galley Marsh",
      email: "galleymarsh@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.instagram.com/galleymarsh",
      followers: 330,
      following: 100,
      posts: 10,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "3",
      name: "Harry Wards",
      email: "harrywards@gmail.com",
      avatar:
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.tiktok.com/harrywards",
      followers: 454,
      following: 454,
      likes: 564,
      posts: 343,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "3",
      name: "Hancey Barack",
      email: "hb@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=3161&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.facebook.com/harrywards",
      friends: 323,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "5",
      name: "Emily Stone",
      email: "emilystone@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.instagram.com/emilystone",
      followers: 620,
      following: 150,
      posts: 45,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "6",
      name: "Chris Paul",
      email: "chrispaul@gmail.com",
      avatar:
          "https://plus.unsplash.com/premium_photo-1675130119373-61ada6685d63?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://wa.me/+919876543210",
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "7",
      name: "Nancy Drew",
      email: "nancydrew@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?q=80&w=3088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.facebook.com/nancydrew",
      friends: 245,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "8",
      name: "Mark Lee",
      email: "marklee@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.tiktok.com/marklee",
      followers: 890,
      following: 430,
      likes: 2100,
      posts: 120,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "9",
      name: "Sophia Miller",
      email: "sophiamiller@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1553782376-b2e8256ab838?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://wa.me/+918888888888",
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "10",
      name: "Liam Johnson",
      email: "liamjohnson@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.instagram.com/liamjohnson",
      followers: 725,
      following: 210,
      posts: 56,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "11",
      name: "Ava Brown",
      email: "avabrown@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1553782376-b3c480f5fea7?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.tiktok.com/avabrown",
      followers: 1300,
      following: 500,
      likes: 4200,
      posts: 200,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "12",
      name: "Noah White",
      email: "noahwhite@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1557862921-37829c790f19?q=80&w=3271&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.facebook.com/noahwhite",
      friends: 410,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "13",
      name: "Olivia Martin",
      email: "oliviamartin@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1573140247632-f8fd74997d5c?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.instagram.com/oliviamartin",
      followers: 980,
      following: 340,
      posts: 70,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "14",
      name: "Mason Garcia",
      email: "masongarcia@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1500048993953-d23a436266cf?q=80&w=3269&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://wa.me/+919999999999",
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "15",
      name: "Isabella Martinez",
      email: "isabellamartinez@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.tiktok.com/isabellamartinez",
      followers: 2200,
      following: 700,
      likes: 8500,
      posts: 320,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "16",
      name: "Lucas Lee",
      email: "lucaslee@gmail.com",
      avatar:
          "https://plus.unsplash.com/premium_photo-1689977927774-401b12d137d6?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.facebook.com/lucaslee",
      friends: 550,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "17",
      name: "Mia Wilson",
      email: "miawilson@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3164&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://www.instagram.com/miawilson",
      followers: 1500,
      following: 600,
      posts: 125,
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      last_post: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
    Account(
      id: "18",
      name: "Elijah Thomas",
      email: "elijahthomas@gmail.com",
      avatar:
          "https://images.unsplash.com/photo-1560250097-0b93528c311a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      profile_link: "https://wa.me/+917777777777",
      date_joined: DateTime.now(),
      last_seen: DateTime.now(),
      status: AccountConnectionStatus.pending,
    ),
  ];
}
