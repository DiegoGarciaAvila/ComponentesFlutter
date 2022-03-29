import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Con la Global key podemos hacer referencia a un widget
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
//Con esta valriable map, vamos a poder controlar los valores de nuestro formulario
    final Map<String, String> formValues = {
      'Name': '',
      'LastName': '',
      'Email': '',
      'Pass': '',
      'Rol': '',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs"),
      ),
//El singleChildScrollView nos ayuda a hacer scroll en la pantalla
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
//TextFormField es el widget que se usa para crear formularios
          child: Form(
//Asignamos a la funcion key, el nombre de nuestra key, asi sabemos que uno hace referencia al otro
            key: myFormKey,
            child: Column(
              children: [
                input_widget(
                  labelText: 'Soy un labelText',
                  suffixIcon: Icons.input,
                  hintText: "Soy un hintText",
                  helpetText: "Soy un helperText",
                  icon: Icons.supervised_user_circle,
                  formValues: formValues,
                  fromProperties: 'Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                input_widget(
                  labelText: 'Nombre',
                  suffixIcon: Icons.add,
                  hintText: "Colocar Nombre ",
                  helpetText: "Coloca nombre",
                  icon: Icons.account_circle,
                  formValues: formValues,
                  fromProperties: 'LastName',
                ),
                const SizedBox(
                  height: 20,
                ),
                input_widget(
                    labelText: 'Email',
                    suffixIcon: Icons.email,
                    hintText: "Colocar Email ",
                    helpetText: "Coloca email",
                    keyboardType: TextInputType.emailAddress,
                    fromProperties: 'Email',
                    formValues: formValues),

                const SizedBox(
                  height: 20,
                ),
                input_widget(
                  labelText: 'Password',
                  suffixIcon: Icons.password,
                  hintText: "Colocar Password ",
                  helpetText: "Coloca Password",
                  obscureText: true,
                  formValues: formValues,
                  fromProperties: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
//Con DropdownButtonFormFiled creamos un menu de opcions, inicamos que los opciones son tipo string
                DropdownButtonFormField<String>(
//Los items son la lista de opcions que tendra nuestro boton
                    items: const [
                      DropdownMenuItem(
                        child: Text("Admin"),
                        value: 'Admin',
                      ),
                      DropdownMenuItem(
                        child: Text("SuperUser"),
                        value: 'SuperUser',
                      ),
                      DropdownMenuItem(
                        child: Text("DeveloperSenior"),
                        value: 'DeveloperSenior',
                      ),
                      DropdownMenuItem(
                        child: Text("DeveloperJr"),
                        value: 'DeveloperJr',
                      )
                    ],
//La funcion onChange sirve que para poder interacutar con el boton
                    onChanged: (value) {
//De esta forma preguntamos si el value es nulo le asignamos un valor
                      value ??= 'Admin';
                      formValues['Rol'] = value;
                    }),
                ElevatedButton(
                    onPressed: () {
//Con la funcion FocusScope, hacemos que el teclado desapareza
                      FocusScope.of(context).requestFocus(FocusNode());
//con este if hacemos la validacion de los inputs, como puede ser un valor nulo podemos ! despues de currentState
                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                      child: Center(child: Text("Guardar")),
                      width: double.infinity,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
