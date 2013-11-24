package org.jaina.education.web;

import org.jaina.education.Partner;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/partners")
@Controller
@RooWebScaffold(path = "partners", formBackingObject = Partner.class)
public class PartnerController {
}
