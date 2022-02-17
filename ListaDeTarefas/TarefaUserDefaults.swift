

import UIKit

class TarefaUserDefaults{
    
    let chave = "listaTarefa"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        
        tarefas = listar()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
        
    }
    
    func remover(indice: Int){
        tarefas = listar()
        
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    
}
