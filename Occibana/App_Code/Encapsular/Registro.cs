﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Login
/// </summary>
[Serializable]//permite que se tenga relacion en cadena (volver objeto)
[Table("usuario", Schema = "login")]
public class Registro
{
    private int id;
    private string nombre;
    private string apellido;
    private string correo;
    private string telefono;
    private string usuario;
    private string contrasena;
    private int idestado;
    private string fotoperfil;
   

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [Column("usuario")]
    public string Usuario { get => usuario; set => usuario = value; }
    [Column("contrasena")]
    public string Contrasena { get => contrasena; set => contrasena = value; }
    [Column("idestado")]
    public int Idestado { get => idestado; set => idestado = value; }
    [Column("fotoperfil")]
    public string Fotoperfil { get => fotoperfil; set => fotoperfil = value; }
}