/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hu.reof.restock.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
        return mv;
    }
    
}
