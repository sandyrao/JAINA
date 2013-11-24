package org.jaina.education.web;

import org.jaina.education.Sponsor;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sponsors")
@Controller
@RooWebScaffold(path = "sponsors", formBackingObject = Sponsor.class)
public class SponsorController {
}
