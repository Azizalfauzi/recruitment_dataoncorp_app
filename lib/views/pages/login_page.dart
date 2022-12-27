part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // adding form text field
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // adding to header text
  // title and image
  Widget headerText() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 50,
      ),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            'Data OnCorp',
            style: blackTextStyleInter.copyWith(
              fontWeight: bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }

  // adding to header text
  // title and image
  Widget contentText() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Login',
            style: blackTextStyleInter.copyWith(
              fontWeight: regular,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  // adding to content page
// form or textfield
  Widget contentEmail() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        controller: usernameController,
        decoration: InputDecoration(
          labelText: 'Type your username here',
          labelStyle: greenTextStyleInter.copyWith(
            fontSize: 15,
            fontWeight: light,
          ),
          border: const OutlineInputBorder(),
          hintText: 'username',
        ),
      ),
    );
  }

  Widget contentPassword() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 15,
      ),
      child: TextField(
        obscureText: _obscureText,
        controller: passwordController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Type your password here',
          labelStyle: greenTextStyleInter.copyWith(
            fontSize: 15,
            fontWeight: light,
          ),
          hintText: 'Password',
          hintStyle: greenTextStyleInter.copyWith(
            fontSize: 15,
            fontWeight: light,
          ),
          suffix: InkWell(
            onTap: _toggle,
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              size: 15.0,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }

  // adding to footer page
  // button
  Widget footer() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: kPrimaryColor,
      textStyle: whiteTextStyleInter.copyWith(
        fontWeight: medium,
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: style,
          onPressed: () {
            if (usernameController.text == "" ||
                passwordController.text == "") {
              Flushbar(
                duration: const Duration(milliseconds: 3000),
                flushbarPosition: FlushbarPosition.TOP,
                backgroundColor: Colors.red,
                titleText: Text(
                  'Ada form kosong!',
                  style: whiteTextStyleInter.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                messageText: Text(
                  'Lakukan pengisian form dengan benar',
                  style: whiteTextStyleInter.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ).show(context);
            } else {
              context.read<RoutesCubit>().emit(RoutesHome());
            }
          },
          child: Text(
            'Login',
            style: whiteTextStyleInter.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: defaultMargin, right: defaultMargin),
            child: Column(
              children: [
                headerText(),
                contentText(),
                contentEmail(),
                contentPassword(),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
