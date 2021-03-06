﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] != null)
        {
            Response.Redirect("Perfil.aspx");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Registro login = new Registro();

        login.Usuario = TB_user.Text.ToUpper();
        login.Contrasena = TB_contrasena.Text.ToUpper();

        login = new DAOLogin().verificar(login);
        if (login == null)
        {
            L_msj.Text = "Verifica tus datos\n usuario o contraseña incorrecto";
        }
        else
        {
            Session["usuario"] = login;
            Response.Redirect("Perfil.aspx");
        }        
    }
}