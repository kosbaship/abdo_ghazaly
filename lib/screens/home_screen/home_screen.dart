import 'package:abdo_ghazaly/screens/home_screen/cubit/home_cubit.dart';
import 'package:abdo_ghazaly/screens/home_screen/cubit/home_states.dart';
import 'package:abdo_ghazaly/shared/app_widgets.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => HomeCubit()..getData(),
        child: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            return ConditionalBuilder(
              condition: state is! HomeStateLoading,
              builder: (context) => ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 8,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        // this a good structure for a list item
                        child: ListTile(
                          // one
                          leading: defaultText(
                            title: "${HomeCubit.get(context).posts[index].id}",
                            fontFamily: "Pacifico",
                            fontWeight: FontWeight.normal,
                          ),
                          //two
                          title: defaultText(
                            title: "${HomeCubit.get(context).posts[index].title}",
                            fontFamily: "Pacifico",
                            fontWeight: FontWeight.normal,
                          ),
                          //three
                          subtitle: defaultText(
                            title: "${HomeCubit.get(context).posts[index].userId}",
                          ),
                        )),
                  );
                },
                itemCount: HomeCubit.get(context).posts.length,
              ),
              fallback: (context) => Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.amber,
              )),
            );
          },
        ),
      ),
    );
  }
}
