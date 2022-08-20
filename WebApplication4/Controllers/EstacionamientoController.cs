using WebApplication4.Models;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static WebApplication4.Models.Estacionamiento;

namespace WebApplication4.Controllers
{
    public class EstacionamientoController : Controller
    {
        // GET: Vehiculos
        public ActionResult Index()
        {
            List<Estacionamiento.RegVehiculo> temp = new List<Estacionamiento.RegVehiculo>();
            temp = getRegistroVehiculos();
            return View(temp);
        }

        public JsonResult getTipoVehiculos()
        {
            List<Estacionamiento.TipoVehiculo> temp = new List<Estacionamiento.TipoVehiculo>();
            temp = DifTipVehiculos();
            return Json(temp, JsonRequestBehavior.AllowGet);
        }
        public JsonResult getSalidaVehiculo()
        {
            Estacionamiento.RegVehiculo temp = new Estacionamiento.RegVehiculo();
            temp = getRegistroVehiculos_1(Int32.Parse(Request["IdReg"].ToString()));
            return Json(temp, JsonRequestBehavior.AllowGet);
        }
        public JsonResult setEntradaVehiculo()
        {
            Estacionamiento.MensajeResult temp = new Estacionamiento.MensajeResult();
            temp = setEntrada(Request["NumeroPlaca"], Request["TipoVehiculo"]);
            return Json(temp, JsonRequestBehavior.AllowGet);
        }
        public JsonResult setNewTipoVehiculo()
        {
            Estacionamiento.MensajeResult temp = new Estacionamiento.MensajeResult();
            temp = setNewTipoV(Request["TipoVehiculo"], float.Parse(Request["CostoTarifa"]));
            return Json(temp, JsonRequestBehavior.AllowGet);
        }
        public JsonResult setSalidaVehiculo()
        {
            Estacionamiento.MensajeResult temp = new Estacionamiento.MensajeResult();
            temp = setSalida(Int32.Parse(Request["IdSalidaVehiculo"].ToString()));
            return Json(temp, JsonRequestBehavior.AllowGet);
        }

        public JsonResult getReporteSalida()
        {
            List<Estacionamiento.RegVehiculo> temp = new List<Estacionamiento.RegVehiculo>();
            temp = getRegistroVehiculos_2();
            return Json(temp, JsonRequestBehavior.AllowGet);
        }
        public ActionResult _ListaxFecha(string FxH)
        {
            return View(getFechaxHora(FxH));
        }
        public ActionResult _ListaxPlaca(string placa)
        {
            return View(getxPlaca(placa));
        }
    }
}
