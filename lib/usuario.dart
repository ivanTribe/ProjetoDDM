class Usuario {
  String _email='';
  int _senha=0;
  
  Usuario(this._email, this._senha);

  get email => this._email;

 set email( value) => this._email = value;

  get senha => this._senha;

 set senha( value) => this._senha = value;

}