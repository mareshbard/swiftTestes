class Filmes {
    var nomeFilme: String
    var diretores: [String]
    var sobre: String { //computada
      return "posso inserir um comentário depois sobre o filme \(nomeFilme)"
    }
    
    init(nomeFilme: String, diretores: [String]) { //instanciou
        self.nomeFilme = nomeFilme
        self.diretores = diretores
    }
//sobreescrita depois
    func nota() {
        print("nota dó")
    }

    var ator: String {
        return "daniel macht"
    }
    // filtragem
    func filtrarDirComO() -> [String] {
        let dirFiltro = diretores.filter { diretor in
            return diretor.lowercased().contains("o")
        }
        return dirFiltro
    }
}

class Animacao: Filmes {
    let estilo: String

    init(nomeFilme: String, diretores: [String], estilo: String) {
        self.estilo = estilo
        super.init(nomeFilme: nomeFilme, diretores: diretores)
    }

    override func nota() {
        print("nota 2")
    }

    override var ator: String {
        return "imdb"
    }
}

let animacao1 = Animacao(nomeFilme: "Através do Aranhaverso", diretores: ["Joaquim dos Santos"], estilo: "animado")
let filme1 = Filmes(nomeFilme: "Clube da Luta", diretores: ["Mary Harron", "Quentin Tarantino", "Greta Gerwig"])

print(animacao1.nomeFilme)
let filtrado = filme1.filtrarDirComO()
print(filtrado)
print(filme1.sobre)
