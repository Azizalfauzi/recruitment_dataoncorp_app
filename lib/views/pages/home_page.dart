part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget contentHeader() {
    return GestureDetector(
      onTap: () {
        context.read<RoutesCubit>().emit(RoutesWeb());
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white12,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: const FlutterLogo(),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aziz Alfauzi',
                          style: blackTextStyleInter,
                        ),
                        Text(
                          '12-Nopember-1998',
                          style: blackTextStyleInter.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                style: blackTextStyleInter,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '296',
                            style: blackTextStyleInter,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.message),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '49',
                            style: blackTextStyleInter,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.heart_broken),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      height: 500,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: mockUser
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<RoutesCubit>()
                            .emit(RoutesDetail(e.userName, e.profileName));
                      },
                      child: CardUser(
                        profileName: e.profileName,
                        userName: e.userName,
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<RoutesCubit>().emit(RoutesLogin());
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        title: Text(
          'City News',
          style: whiteTextStyleInter.copyWith(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              children: [
                contentHeader(),
                content(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Post News'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
