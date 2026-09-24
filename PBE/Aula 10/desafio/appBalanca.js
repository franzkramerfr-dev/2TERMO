const entrada = require('readline-sync'); 

let sistemaAtivo = true;

while(sistemaAtivo){
    try {
        console.log("=== BALANÇA DE PRECISÃO INDUSTRIAL ===")
        const pesoUser = entrada.questionFloat("Digite o peso da peca em gramas: ")
        
        if (isNaN(pesoUser)) {
            throw new Error("\nVoce digitou letras. Digite apenas numeros!");
        }


        if (pesoUser <100 || pesoUser >500) {
            throw new Error("\nDigite um peso que se encaixe dentro do padrão") 
            
            
        } else {
            console.log(`\nPeca aprovada com ${pesoUser}g ✅`)
        }


  
     

}
catch (erro) {
        
        console.log("\n-------------------------------------------");
        console.log(`⚠️  ALERTA DE SISTEMA: ${erro.message}`);
        console.log("----------------------------------------------")

}
}