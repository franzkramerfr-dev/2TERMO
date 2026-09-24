  function verificarPeso(leitura) {
        const peso = Number(leitura)

    
        if (isNaN(pesoUser)) {
            throw new Error("\nVoce digitou letras. Digite apenas numeros!");
        }


        if (pesoUser <100 || pesoUser >500) {
            throw new Error("\nDigite um peso que se encaixe dentro do padrão") 
            
  } else {
            console.log(`\nPeca aprovada com ${pesoUser}g ✅`)
        }
    }

    module.exports =  (
        verificarPeso
    )