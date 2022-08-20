using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication4.Models
{
    public class Estacionamiento
    {
        public struct RegVehiculo
        {
            public int Id { get; set; }
            public string NumeroPlaca { get; set; }
            public string Tipo { get; set; }
            public string Hora_In { get; set; }
            public string Hora_Out { get; set; }
            public int Importe { get; set; }
            public int TiempoE { get; set; }

        }
        public struct TipoVehiculo
        {
            public int Id { get; set; }
            public string Tipo { get; set; }

        }
        public struct MensajeResult
        {
            public string Mensaje { get; set; }
            public string Tipo { get; set; }

        }
        public static MensajeResult setEntrada(string NumPlaca, string TipoV)
        {
            MensajeResult result = new MensajeResult();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", '2');
                    cmd.Parameters.AddWithValue("@NumeroPlaca", NumPlaca);
                    cmd.Parameters.AddWithValue("@TipoVehiculo", TipoV);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Mensaje = dr["Mensaje"].ToString();
                            result.Tipo = dr["Tipo"].ToString();
                        }
                    }
                }
            }
            return result;
        }
        public static MensajeResult setNewTipoV(string TipoVehiculo, float CostoTarifa)
        {
            MensajeResult result = new MensajeResult();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "2.2");
                    cmd.Parameters.AddWithValue("@newTipoV", TipoVehiculo);
                    cmd.Parameters.AddWithValue("@newTarifaV", CostoTarifa);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Mensaje = dr["Mensaje"].ToString();
                            result.Tipo = dr["Tipo"].ToString();
                        }
                    }
                }
            }
            return result;
        }
        public static MensajeResult setSalida(int IdSalidaVehiculo)
        {
            MensajeResult result = new MensajeResult();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "2.1");
                    cmd.Parameters.AddWithValue("@IdRegistroVehiculo", IdSalidaVehiculo);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Mensaje = dr["Mensaje"].ToString();
                            result.Tipo = dr["Tipo"].ToString();
                        }
                    }
                }
            }
            return result;
        }
        public static List<TipoVehiculo> DifTipVehiculos()
        {
            List<TipoVehiculo> result = new List<TipoVehiculo>();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", '1');
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(new TipoVehiculo
                            {
                                Id = Int32.Parse(dr["Id"].ToString()),
                                Tipo = dr["TipoVehiculo"].ToString(),
                            });
                        }
                    }
                }
            }
            return result;
        }
        public static List<RegVehiculo> getRegistroVehiculos()
        {
            List<RegVehiculo> result = new List<RegVehiculo>();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "1.1");
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(new RegVehiculo
                            {
                                Id = Int32.Parse(dr["IdRegistro"].ToString()),
                                NumeroPlaca = dr["NumPlaca"].ToString(),
                                Tipo = dr["Tipo"].ToString(),
                                Hora_Out = dr["Salida"].ToString(),
                                Hora_In = dr["Entrada"].ToString(),
                                TiempoE = Int32.Parse(dr["Tiempo"].ToString()),
                                Importe = Int32.Parse(dr["Importe"].ToString()),
                            });
                        }
                    }
                }
            }
            return result;
        }
        public static RegVehiculo getRegistroVehiculos_1(int IdReg)
        {
            RegVehiculo result = new RegVehiculo();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "1.2");
                    cmd.Parameters.AddWithValue("@IdRegistroVehiculo", IdReg);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Id = Int32.Parse(dr["IdRegistro"].ToString());
                            result.NumeroPlaca = dr["NumPlaca"].ToString();
                            result.Tipo = dr["Tipo"].ToString();
                            result.Hora_In = dr["Entrada"].ToString();
                            result.Hora_Out = dr["Salida"].ToString();
                            result.TiempoE = Int32.Parse(dr["TiempoMin"].ToString());
                            result.Importe = Int32.Parse(dr["Tarifa"].ToString());
                        }
                    }
                }
            }
            return result;
        }
        public static List<RegVehiculo> getRegistroVehiculos_2()
        {
            List<RegVehiculo> result = new List<RegVehiculo>();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "1.3");
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(new RegVehiculo
                            {
                                Id = Int32.Parse(dr["IdRegistro"].ToString()),
                                NumeroPlaca = dr["NumPlaca"].ToString(),
                                Tipo = dr["Tipo"].ToString(),
                                TiempoE = Int32.Parse(dr["Importe"].ToString())
                            });
                        }
                    }
                }
            }
            return result;
        }
        public static List<RegVehiculo> getFechaxHora(string FxH)
        {
            List<RegVehiculo> result = new List<RegVehiculo>();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "1.3");
                    cmd.Parameters.AddWithValue("@FechaFiltro", FxH);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(new RegVehiculo
                            {
                                Id = Int32.Parse(dr["IdRegistro"].ToString()),
                                NumeroPlaca = dr["NumPlaca"].ToString(),
                                Tipo = dr["Tipo"].ToString(),
                                TiempoE = Int32.Parse(dr["TiempoMin"].ToString()),
                                Importe = Int32.Parse(dr["Importe"].ToString())
                            });
                        }
                    }
                }
            }
            return result;
        }
        public static List<RegVehiculo> getxPlaca(string placa)
        {
            List<RegVehiculo> result = new List<RegVehiculo>();
            using (var conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                using (var cmd = new System.Data.SqlClient.SqlCommand(@"[dbo].[Estacionamiento]", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Operacion", "1.4");
                    cmd.Parameters.AddWithValue("@PlacaFiltro", placa);
                    cmd.CommandTimeout = 180;
                    conn.Open();
                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(new RegVehiculo
                            {
                                Id = Int32.Parse(dr["IdRegistro"].ToString()),
                                NumeroPlaca = dr["NumPlaca"].ToString(),
                                Tipo = dr["Tipo"].ToString(),
                                Hora_Out = dr["Salida"].ToString(),
                                Hora_In = dr["Entrada"].ToString(),
                                TiempoE = Int32.Parse(dr["Tiempo"].ToString()),
                                Importe = Int32.Parse(dr["Importe"].ToString()),
                            });
                        }
                    }
                }
            }
            return result;
        }
    }
}