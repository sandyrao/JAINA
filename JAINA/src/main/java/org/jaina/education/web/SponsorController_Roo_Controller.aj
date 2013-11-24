// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.jaina.education.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.jaina.education.Sponsor;
import org.jaina.education.web.SponsorController;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SponsorController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SponsorController.create(@Valid Sponsor sponsor, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, sponsor);
            return "sponsors/create";
        }
        uiModel.asMap().clear();
        sponsor.persist();
        return "redirect:/sponsors/" + encodeUrlPathSegment(sponsor.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SponsorController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Sponsor());
        return "sponsors/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String SponsorController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("sponsor", Sponsor.findSponsor(id));
        uiModel.addAttribute("itemId", id);
        return "sponsors/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SponsorController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("sponsors", Sponsor.findSponsorEntries(firstResult, sizeNo));
            float nrOfPages = (float) Sponsor.countSponsors() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("sponsors", Sponsor.findAllSponsors());
        }
        addDateTimeFormatPatterns(uiModel);
        return "sponsors/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SponsorController.update(@Valid Sponsor sponsor, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, sponsor);
            return "sponsors/update";
        }
        uiModel.asMap().clear();
        sponsor.merge();
        return "redirect:/sponsors/" + encodeUrlPathSegment(sponsor.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String SponsorController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Sponsor.findSponsor(id));
        return "sponsors/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String SponsorController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Sponsor sponsor = Sponsor.findSponsor(id);
        sponsor.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/sponsors";
    }
    
    void SponsorController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("sponsor_startyear_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("sponsor_lastcommunicated_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void SponsorController.populateEditForm(Model uiModel, Sponsor sponsor) {
        uiModel.addAttribute("sponsor", sponsor);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String SponsorController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
