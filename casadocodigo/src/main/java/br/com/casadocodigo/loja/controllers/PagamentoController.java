package br.com.casadocodigo.loja.controllers;

import br.com.casadocodigo.loja.models.CarrinhoCompras;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.TARGET_CLASS)
@RequestMapping("/pagamento")
@Controller
public class PagamentoController {

    @Autowired
    CarrinhoCompras carrinho;

    @RequestMapping(value="/finalizar", method=RequestMethod.POST)
    public ModelAndView finalizar(RedirectAttributes model){
//        System.out.println(carrinho.getTotal());
        model.addFlashAttribute("sucesso", "Pagamento Realizado com Sucesso");

        return new ModelAndView("redirect:/produtos");
    }
}