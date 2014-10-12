/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hu.reof.restock.controllers;

import hu.reof.restock.hibernate.util.StockUtil;
import hu.reof.restock.hibernate.util.SupplierUtil;
import hu.reof.restock.hibernate.util.WarehouseUtil;
import hu.reof.restock.hibernate.Supplier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author fulopattila
 */
@Controller
public class IndexController {
    
    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView index_GET() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
    
    @RequestMapping(value = "masterData.htm", method = RequestMethod.GET)
    public ModelAndView masterData_GET() {
        ModelAndView mv = new ModelAndView("masterData");
        return mv;
    }
    
    @RequestMapping(value = "stockSupport.htm", method = RequestMethod.GET)
    public ModelAndView stockSupport_GET() {
        ModelAndView mv = new ModelAndView("stockSupport");
        mv.addObject("stock_list", StockUtil.getUtil(null).getAllType());
        return mv;
    }
    
    @RequestMapping(value = "warehouseSupport.htm", method = RequestMethod.GET)
    public ModelAndView warehouseSupport_GET() {
        ModelAndView mv = new ModelAndView("warehouseSupport");
        mv.addObject("warehouse_list", WarehouseUtil.getUtil(null).getAllType());
        return mv;
    }
    
    @RequestMapping(value = "supplierSupport.htm", method = RequestMethod.GET)
    public ModelAndView supplierSupport_GET() {
        ModelAndView mv = new ModelAndView("supplierSupport");
        mv.addObject("supplier_list", SupplierUtil.getUtil(null).getAllType());
        return mv;
    }
    
    @RequestMapping(value = "newStock.htm", method = RequestMethod.GET)
    public ModelAndView newStock_GET() {
        ModelAndView mv = new ModelAndView("newStock");
        return mv;
    }
    
    @RequestMapping(value = "newWarehouse.htm", method = RequestMethod.GET)
    public ModelAndView newWarehouse_GET() {
        ModelAndView mv = new ModelAndView("newWarehouse");
        return mv;
    }
    
    @RequestMapping(value = "newSupplier.htm", method = RequestMethod.GET)
    public ModelAndView newSupplier_GET() {
        ModelAndView mv = new ModelAndView("newSupplier");
        mv.addObject("supplier_send",new Supplier());
        return mv;
    }
    
    @RequestMapping(value = "newSupplier.htm", method = RequestMethod.POST)
    public String newSupplier(Supplier supplier_send,BindingResult results, ModelMap map){
        Supplier supplier = new Supplier();
        supplier.setNev(supplier_send.getNev());
        supplier.setCim(supplier_send.getCim());
        supplier.setAdoszam(supplier_send.getAdoszam());
        supplier.setTelefonszam(supplier_send.getTelefonszam());
        String msg = "Sikertelen mentés";
        try {
            supplier.setId(supplier_send.getId());
            SupplierUtil.getUtil(null).saveOrUpdate(supplier);
            map.addAttribute(supplier_send);
        } catch (Exception e) {
            msg = "Váratlan hiba";
        }
        return "newSupplier";
    }
    
    //Új elemek mentése
    @ModelAttribute("supplierSend")
    public Supplier SupplierSendClear(){
        Supplier supplier_send = new Supplier();
        supplier_send.setNev("");
        supplier_send.setCim("");
        supplier_send.setAdoszam("");
        supplier_send.setTelefonszam("");
        return supplier_send;
    }
    
    
}
