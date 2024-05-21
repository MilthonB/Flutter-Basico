import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _pass = '';
  String _fecha = '';

  String _opcionseleccionada = 'Volar';
  TextEditingController _inoutFileDateController = TextEditingController();

  List<String> _poderes = ['Volar','Rayoz x', 'Super Aliento', 'Super ferza']; 

  final decora =  InputDecoration( 
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0)
    )
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        children: [
          _createInput1(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPass(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersonas()
        ],
      ),
    );
  }
  
  Widget _createInput1() {

    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        counter: Text('Cantidad de letras ${_nombre.length} '),
        hintText: 'Nombre',
        label: Text('Nombre'),
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;

        });

      },
    );

  }
  
  Widget _crearPersonas() {

    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es: $_email'),
      trailing: Text(_opcionseleccionada),
    );

  }
  
  Widget _crearEmail() {


    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        icon: Icon(Icons.ad_units),
        label: Text('Correo electronico'),
        helperText: 'Correo elctronico',
        suffixIcon: Icon(Icons.email),
        hintText: 'Cantidad',
        counter: Text('Cantidad ${_email.length} '),
      ),
      onChanged: (value) {
        setState(() {
        _email = value;
        });
      },
    );
  }
  
  Widget _crearPass() {

    return TextField(
      // keyboardType: TextInputType.,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        icon: Icon(Icons.password),
        label: Text('Password'),
        suffixIcon: Icon(Icons.lock),
        counter: Text( 'Cantidad: ${_pass.length}' ),
        helperText: 'Password'
      ),
      onChanged: (value){
        _pass = value;
      },

    );

  }
   Widget _crearFecha(BuildContext context){
    return TextField(
      controller: _inoutFileDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        icon: Icon(Icons.calendar_today),
        label: Text('Fecha de nacimiento'),
        suffixIcon: Icon(Icons.calendar_month),
        counter: Text( 'Cantidad: ${_pass.length}' ),
        helperText: 'Password'
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());

        _selectDate(context);
        
      },

    );
   }
   
     void _selectDate(BuildContext context) async{

      DateTime? pick = await showDatePicker(
        context: context,
        initialDate:  DateTime.now(),
        firstDate: DateTime(2012),
        lastDate: DateTime(2050),
        locale: Locale('es','ES')
      );

      if( pick != null ){
        setState(() {
          _fecha = pick.toString();
          _inoutFileDateController.text = _fecha;
        });
      }

     }
     
        List<DropdownMenuItem<String>> getOpciones()  {

            List<DropdownMenuItem<String>> lista = [];

            _poderes.forEach((pdoer){
              lista.add(DropdownMenuItem(
                child: Text(pdoer),
                value: pdoer,
                ));
            });

            return lista;
        }



       Widget _crearDropDown() {


        return DropdownButton(
          value: _opcionseleccionada,
          items: getOpciones(), 
          onChanged: (value){
            setState(() {
              _opcionseleccionada = value!;
            });
          },
          );

       }
}