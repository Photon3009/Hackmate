import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/features/app/data/api_client.dart';
import 'package:hackmate/features/chat/data/blocs/chat_cubit.dart';

@RoutePage(name: 'ChatRouter')
class ChatRouterPage extends StatelessWidget implements AutoRouteWrapper {
  const ChatRouterPage({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ChatCubit>(
        create: (context) => ChatCubit()
          ..initialize(
            apiClient: context.read<ApiClient>(),
          )
          ..loadChatRooms()
          ..subscribeToChatRooms()
          ..getMessagesForChatRooms(),
        child: this,
      );
}
