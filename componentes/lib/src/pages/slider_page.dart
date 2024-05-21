import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.00;
  bool _bloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider'),),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }
  
  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.blue,
      label: 'Tamanio de la imagen',
      divisions: 20,
      value: _valorSlider, 
      min: 10.00,
      max: 400.00,
      onChanged: (_bloquearCheck) ? null : (value){
        setState(() {
          _valorSlider = value;
        });
      },
      );

  }
  
  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://image.api.playstation.com/vulcan/img/rnd/202010/2716/LQm890FA1pIAEoiU7HJQm1S5.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
      );
  }
  
  Widget _crearCheckBox() {

    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (value){
    //     setState(() {
    //       _bloquearCheck = value!;
    //     });
    //   },
    //   );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck = value!;
        });
      },  
      );

  }
  
  Widget _crearSwitch() {

    return SwitchListTile(
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;
        });
      },
      );

  }
}