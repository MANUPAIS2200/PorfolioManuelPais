<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ASPNET_Portfolio.About" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!--
File name: About.aspx
file description: About page that describe my background.
-->
    <main class="main">
        <div class="container">
            <div class="page-header">
                <h2> Manuel Pais </h2>
            </div>
            <div class="row">
                <div class="col-md-3 profile-pic">
                    <img src="Assets/images/profile-pic-600.png" alt="Foto Personal" height="250px"/>
                </div>
                <div class="col-md-9">
                    <br/>
                    <p>Soy un programador dedicado, en constante crecimiento; Entusiasta del potencial humano. </p><br />
                    <p>Apasionado por los desafios logicos que se presenten implementando mis conocimientos informaticos.</p>
                    <p>Programador en porceso (en 2022 me recibo), contando con  amplio conocimiento de procedimientos matemáticos y lógicos</p>
                    <br />
                </div>
                
            </div>
            
            <!-- qualifications section -->
            <!-- first row -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Competencias</h2>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/oop.png" height="200" alt="Object Oriented Programming">
                    <h3>POO<br/><small>Java, C++</small></h3>
                    <p>Conocimientos prácticos de Java y conocimientos de C ++.</p>
                </div>
               <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/asp-net.png" height="200" alt="Enterprise Application">
                    <h3>Framework<br/><small>ASP.NET, C#</small></h3>
                    <p>Creacion de aplicaciones web ASP.NET (.NET Framework) utilizando C#</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/Octocat.png" height="200" alt="Version Control">
                    <h3>Repositorios de Codigo<br/><small>GitHub</small> </h3>
                    <p>Control de versiones continuo para gestionar proyectos de forma oportuna.</p>
                </div>
            </div>
            <!-- second row -->
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/sqlPortada.png" height="200" alt="Application Security">
                    <h3>Base de Datos<br/><small>SQL y MYSQL</small></h3>
                    <p>Manejo de bases de datos utilizan el lenguaje de consulta estructurada (SQL) para escribir, modificar y consultar datos.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/matematica.png" height="200" alt="Enterprise Application">
                    <h3>Procesamientos Logicos Matematicos<br/><small></small></h3>
                    <p>Cuento con estudios dedicados al Profesorado de matemática y matemática aplicada especializado en diciplinas industriales.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 text-center">
                    <img class="img-center" src="Assets/images/Photoshop.png" height="200" alt="Contents Management System">
                    <h3>Editor de Imagenes<br/><small>Photoshop</small></h3>
                    <p>Conocimentos basicos de modificacion de imagenes principalmente para el retoque de fotografías y gráficos.</p>
                </div>
                
            </div>
        </div>
    </main>
</asp:Content>
