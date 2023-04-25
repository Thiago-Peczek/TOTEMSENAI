﻿using Teste;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace teste
{
    public partial class lab : Form
    {
        private readonly List<Laboratorio> laboratorios = new List<Laboratorio>();
        public int id = -1;

        conexao con = new conexao();
        Font SuperMiniFont = new Font("Microsoft Sans Serif", 10, FontStyle.Bold);
        Font MiniFont = new Font("Microsoft Sans Serif", 12, FontStyle.Bold | FontStyle.Underline);
        Font SmallFont = new Font("Arial", 24, FontStyle.Bold);
        Font MediumFont = new Font("Arial", 26, FontStyle.Bold | FontStyle.Underline);

        public lab()
        {
            InitializeComponent();
            laboratorios = new List<Laboratorio>
            {
                new Laboratorio("Laboratorio 001",id),
                new Laboratorio("Laboratorio 002",id ),
                new Laboratorio("Laboratorio 003",id ),
                new Laboratorio("Laboratorio 004",id ),
                new Laboratorio("Laboratorio 005",id ),
                new Laboratorio("Laboratorio 006",id),
            };

            foreach (var laboratorio in laboratorios)
            {
                
               
                laboratorio.Medias.AddRange(MediaProvider.GetImagens(laboratorio));
                laboratorio.Medias.AddRange(MediaProvider.GetVideos(laboratorio));
                CriarItemLaboratorio(laboratorio);
            }

           
        }
        private void CriarItemLaboratorio(Laboratorio laboratorio)
        {
            var mainPanel = MainPanel();
            var headerPanel = HeaderPanel(laboratorio.Nome);
            mainPanel.Click += (sender, e) => OnPanelClick(laboratorio);
            mainPanel.Controls.Add(headerPanel);

            pnLaboratorios.Controls.Add(mainPanel);
        }
        private static Panel MainPanel()
        {
            return new Panel()
            {
                Width = 150,
                Height = 200,
                BorderStyle = BorderStyle.FixedSingle
            };
        }

        private static Panel HeaderPanel(string titulo)
        {
            var panel = new Panel()
            {
                BackColor = Color.Blue,
                Height = 30
            };
            var label = new Label()
            {
                Text = titulo,
                ForeColor = Color.White,
                Dock = DockStyle.Fill,
                TextAlign = ContentAlignment.MiddleCenter,
            };
            panel.Controls.Add(label);
            panel.Dock = DockStyle.Top;
            return panel;
        }

        private void OnPanelClick(Laboratorio laboratorio)
        {

           
            exibe_video_foto exibe = new exibe_video_foto(laboratorio);
            exibe.Show();
            this.Close();

            //using (var exibe  = new exibe_video_foto(laboratorio))
            //{
            //    exibe.Show();
            //    this.Close();
            //}

        }

        //public static void abre_home()
        //{

        //    Application.Run(new Form1());
        //}
        private void label1_Click(object sender, EventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
            this.Close();
        }


        private void label10_MouseEnter(object sender, EventArgs e)
        {
            label10.Font = MiniFont;
        }

        private void label10_MouseLeave(object sender, EventArgs e)
        {
            label10.Font = SuperMiniFont;
        }

        private void label10_Click_1(object sender, EventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
            this.Close();

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            
        }

        //private void label2_Click(object sender, EventArgs e)
        //{

        //    

        //}



        //private static void exibe()
        //{
        //    exibe();
        //}

        private void lab_Load(object sender, EventArgs e)
        {

        }

        private void customInstaller1_AfterInstall(object sender, System.Configuration.Install.InstallEventArgs e)
        {

        }

        private void pnLaboratorios_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pnLaboratorios_Paint_1(object sender, PaintEventArgs e)
        {

        }
    }
}
