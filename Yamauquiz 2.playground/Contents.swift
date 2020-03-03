//Importando as bibliotecas
import UIKit
import PlaygroundSupport

let cfURL = Bundle.main.url(forResource: "spaceranger", withExtension: "ttf") as! CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

//----------------------------------------------------------------------------------------------------------
//PRIMEIRA PERGUNTA
class Pag2ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox2(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina3 = Pag3ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina3, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Start.jpg")!) //Carregando a cor da proxima tela
        title = "Yamauquiz"; //Titulo da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 100, y: 160, width: 200, height: 20);
        label.font = UIFont(name: "spaceranger", size: 20);
        label.text = "Nome completo?";
        label.textColor = .white;
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Gustavo Yamauchi Sousa Reis", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  40, y: 250, width: 300, height: 60); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox2), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Gustavo Yamauchi dos Reis", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 40, y: 315, width: 300, height: 60); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Gustavo Yamauchi", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 40, y: 380, width: 300, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Gustavo Yamauchi de Sousa", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 40, y: 445, width: 300, height: 60); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//---------------------------------------------------------------------------------------------------------
//SEGUNDA PERGUNTA
class Pag3ViewController:UIViewController{
    
    //Mandando para a proxima tela
    @IBAction func prox3(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina4 = Pag4ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina4, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    //CARREGANDO A TELA
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi.jpg")!)//Carregando a cor da proxima tela
        title = "Yamauquiz" //Titulo da proxima tela
        
        //Label da tela do meio
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        label.text = "Carro dos sonhos?";
        label.font = UIFont(name: "spaceranger", size: 18);
        label.textColor = .white
        
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Pipi", for: .normal); //TITULO DO BOTAO
        Botao.layer.borderWidth = 3;
        Botao.layer.borderColor = UIColor.black.cgColor
        Botao.setImage(UIImage(named: "Kombi.jpg"), for: .normal)
        Botao.frame = CGRect(x:  40, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Errada", for: .normal); //TITULO DO BOTAO
        Botao2.layer.borderWidth = 3;
        Botao2.layer.borderColor = UIColor.black.cgColor
        Botao2.setImage(UIImage(named: "caminhao.jpg"), for: .normal)//Cor do botao
        Botao2.frame = CGRect(x: 195, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Pipi", for: .normal);
        Botao3.layer.borderWidth = 3;
        Botao3.layer.borderColor = UIColor.black.cgColor
        Botao3.setImage(UIImage(named: "Celta.jpg"), for: .normal)//Cor do botao
        Botao3.frame = CGRect(x: 40, y: 360, width: 150, height: 105); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox3), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Pipi", for: .normal);
        Botao4.layer.borderWidth = 3;
        Botao4.layer.borderColor = UIColor.black.cgColor
        Botao4.setImage(UIImage(named: "Chevette.jpg"), for: .normal) //Cor do botao
        Botao4.frame = CGRect(x: 195, y: 360, width: 150, height: 105); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando a label a view
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//---------------------------------------------------------------------------------------------------------
//TERCEIRA PERGUNTA
class Pag4ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox4(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina5 = Pag5ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina5, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi2.jpg")!) //Carregando a cor da proxima tela
        title = "Yamauquiz"; //Titulo da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 100, y: 190, width: 190, height: 50);
        label.text = "Data de nascimento?";
        label.font = UIFont(name: "spaceranger", size: 16);
        label.textColor = .white;
        
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("29/05/2000", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  40, y: 250, width: 300, height: 60); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("30/05/2000", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 40, y: 315, width: 300, height: 60); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("31/05/2001", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 40, y: 380, width: 300, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox4), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("30/05/2001", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 40, y: 445, width: 300, height: 60); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//---------------------------------------------------------------------------------------------------------
//QUARTA PERGUNTA
class Pag5ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox6(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina6 = Pag6ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina6, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi3.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 150, y: 190, width: 200, height: 20);
        label.text = "Curso?";
        label.font = UIFont(name: "spaceranger", size: 20);
        label.textColor = .white;
        
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Ciencia da computacao", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  40, y: 250, width: 300, height: 60); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox6), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Sistemas para internet", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 40, y: 315, width: 300, height: 60); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Design", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 40, y: 380, width: 300, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Jogos digitais", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 40, y: 445, width: 300, height: 60); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//----------------------------------------------------------------------------------------------------------
class Pag6ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox7(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina7 = Pag7ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina7, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi4.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 130, y: 190, width: 200, height: 20);
        label.text = "O que queria ser?";
        label.textColor = .black;
        
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Bombeiro", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  40, y: 250, width: 300, height: 60); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Policial", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 40, y: 315, width: 300, height: 60); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Astronauta", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 40, y: 380, width: 300, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox7), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Biólogo", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 40, y: 445, width: 300, height: 60); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//----------------------------------------------------------------------------------------------------------
class Pag7ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox8(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina8 = Pag8ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina8, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi5.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 105, y: 190, width: 200, height: 20);
        label.text = "Qual desses é ele?";
        label.font = UIFont(name: "spaceranger", size: 18);
        label.textColor = .white;
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Certa", for: .normal); //TITULO DO BOTAO
        Botao.layer.borderWidth = 3;
        Botao.layer.borderColor = UIColor.black.cgColor
        Botao.setImage(UIImage(named: "Ya.jpg"), for: .normal)
        Botao.frame = CGRect(x:  40, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox8), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Errada", for: .normal); //TITULO DO BOTAO
        Botao2.layer.borderWidth = 3;
        Botao2.layer.borderColor = UIColor.black.cgColor
        Botao2.setImage(UIImage(named: "c1.jpg"), for: .normal)//Cor do botao
        Botao2.frame = CGRect(x: 195, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Errada 2", for: .normal);
        Botao3.layer.borderWidth = 3;
        Botao3.layer.borderColor = UIColor.black.cgColor
        Botao3.setImage(UIImage(named: "c2.jpg"), for: .normal)//Cor do botao
        Botao3.frame = CGRect(x: 40, y: 360, width: 150, height: 105);//Dimensoes do botao
        Botao3.addTarget(self, action: #selector(erro), for: .touchUpInside);//Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Errada 3", for: .normal);
        Botao4.layer.borderWidth = 3;
        Botao4.layer.borderColor = UIColor.black.cgColor
        Botao4.setImage(UIImage(named: "c3.jpg"), for: .normal) //Cor do botao
        Botao4.frame = CGRect(x: 195, y: 360, width: 150, height: 105); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}
//----------------------------------------------------------------------------------------------------------
class Pag8ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox9(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina8 = Pag9ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina8, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi6.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 100, y: 190, width: 200, height: 20);
        label.text = "Jogo favorito?";
        label.font = UIFont(name: "spaceranger", size: 20);
        label.textColor = .white;
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Errada", for: .normal); //TITULO DO BOTAO
        Botao.layer.borderWidth = 3;
        Botao.layer.borderColor = UIColor.black.cgColor
        Botao.setImage(UIImage(named: "csgo.jpeg"), for: .normal)
        Botao.frame = CGRect(x:  40, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Errada", for: .normal); //TITULO DO BOTAO
        Botao2.layer.borderWidth = 3;
        Botao2.layer.borderColor = UIColor.black.cgColor
        Botao2.setImage(UIImage(named: "fortenoite.jpeg"), for: .normal)//Cor do botao
        Botao2.frame = CGRect(x: 195, y: 250, width: 150, height: 105); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Errada 2", for: .normal);
        Botao3.layer.borderWidth = 3;
        Botao3.layer.borderColor = UIColor.black.cgColor
        Botao3.setImage(UIImage(named: "airfryer.jpeg"), for: .normal)//Cor do botao
        Botao3.frame = CGRect(x: 40, y: 360, width: 150, height: 105);//Dimensoes do botao
        Botao3.addTarget(self, action: #selector(erro), for: .touchUpInside);//Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Certa", for: .normal);
        Botao4.layer.borderWidth = 3;
        Botao4.layer.borderColor = UIColor.black.cgColor
        Botao4.setImage(UIImage(named: "bo2.jpeg"), for: .normal) //Cor do botao
        Botao4.frame = CGRect(x: 195, y: 360, width: 150, height: 105); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(prox9), for: .touchUpInside); //Evento do botao
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}
//----------------------------------------------------------------------------------------------------------
class Pag9ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox10(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina8 = UltimaViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina8, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi7.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 100, y: 190, width: 200, height: 20);
        label.text = "Um brinquedo?";
        label.font = UIFont(name: "spaceranger", size: 18);
        label.textColor = .white;
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Motoca", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  40, y: 250, width: 300, height: 60); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Barbie", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 40, y: 315, width: 300, height: 60); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Hot wheels", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 40, y: 380, width: 300, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox10), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Soldadinho", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 40, y: 445, width: 300, height: 60); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//----------------------------------------------------------------------------------------------------------
class UltimaViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox10(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina8 = UltimaMViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina8, animated: true) //Animacaozinha da transicao
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi8.jpg")!) //Carregando a cor da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel();
        label.frame = CGRect(x: 100, y: 350, width: 200, height: 20);
        label.text = "OBRIGADA POR JOGAR";
        label.font = UIFont(name: "spaceranger", size: 18);
        label.numberOfLines = 50;
        label.lineBreakMode = NSLineBreakMode.byWordWrapping;
        label.textColor = .white;
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle(">", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 5, y: 600, width: 365, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox10), for: .touchUpInside); //Evento do botao
        
        view.addSubview(Botao3);
        view.addSubview(label);
        self.view = view
        
    }
}

//----------------------------------------------------------------------------------------------------------
class UltimaMViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox10(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina8 = PrincipalViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina8, animated: true) //Animacaozinha da transicao
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
         view.backgroundColor = UIColor(patternImage: UIImage(named: "Yamauchi10.jpg")!) //Carregando a cor da proxima tela

        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle(">", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 5, y: 600, width: 365, height: 60); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox10), for: .touchUpInside); //Evento do botao
        
        view.addSubview(Botao3);
        self.view = view
        
    }
}

//--------------------------------------------------------------------------------------------------------
//VIEW DA PAGINA DE ERRO
class ErroViewController:UIViewController{
    
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina3 = Pag2ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina3, animated: true) //Animacaozinha da transicao
        self.navigationController?.setNavigationBarHidden(true, animated: true);
    }
    override func viewDidLoad(){
        super.viewDidLoad();
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Errou.jpg")!) //cor da tela de erro
        
        let BotaoErro = UIButton();
        BotaoErro.setTitle("RECOMEÇAR", for: .normal);
        BotaoErro.backgroundColor = .black; //Cor do botao
        BotaoErro.frame = CGRect(x: 0, y: 600, width: 380, height: 70); //Dimensoes do botao
        BotaoErro.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //Adicionando a label a view
        view.addSubview(BotaoErro);
        self.view = view;
    }
}

//-------------------------------------------------------------------------------------------------------------
//View da tela principal

//Classe da view
class PrincipalViewController:UIViewController{ //Criando a view da tela inicial do QUIZ
    
    @IBAction func prox(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina2 = InteViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina2, animated: true) //Animacaozinha da transicao
    }
    
    
    //Carregamento da view principal
    override func viewDidLoad(){
        
        
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true); //Propriedades de cor da tela principal
        view.backgroundColor = UIColor(patternImage: UIImage(named: "wll.png")!) //Cor de fundo da tela principal
        self.view.translatesAutoresizingMaskIntoConstraints = false; //Titulo da Barra de navegacao principal
        
        //Label do titulo
        let label = UILabel();
        label.frame = CGRect(x: 40, y: 250, width: 300, height: 40);
        label.text = "Yamauquiz";
        label.numberOfLines = 40;
        label.font = UIFont(name: "spaceranger", size: 50);
        label.textColor = .white
        
        //Botao ta funcionando direitinho
        let Botao = UIButton();
        Botao.setTitle("START", for: .normal); //Titulo do botao
        Botao.layer.cornerRadius = 20; //Borda redondinha
        Botao.backgroundColor = .black; //Cor do botao
        Botao.isOpaque = true; //Opacidade
        Botao.frame = CGRect(x: 40, y: 350, width: 300, height: 50); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox), for: .touchUpInside); //Evento do botao
        
        
        //COLOCANDO OS ITENS NA VIEW
        view.addSubview(label);
        view.addSubview(Botao);
        self.view = view;
    }
}
//View da tela principal

//Classe da view
class InteViewController:UIViewController{ //Criando a view da tela inicial do QUIZ
    
    @IBAction func prox(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina2 = Pag2ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina2, animated: true) //Animacaozinha da transicao
    }
    
    //Carregamento da view principal
    override func viewDidLoad(){
        
        
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true); //Propriedades de cor da tela principal
        view.backgroundColor = UIColor(patternImage: UIImage(named: "wll.png")!) //Cor de fundo da tela principal
        self.view.translatesAutoresizingMaskIntoConstraints = false; //Titulo da Barra de navegacao principal
        
        //Label do titulo
        let label = UILabel();
        label.frame = CGRect(x: 40, y: 310, width: 300, height: 40);
        label.text = "Complete as interrogaçoes para terminar o jogo!";
        label.numberOfLines = 0;
        label.lineBreakMode = NSLineBreakMode.byWordWrapping;
        label.font = UIFont(name: "spaceranger", size: 18);
        label.textColor = .white
        
        //Botao principal da view
        let Botao = UIButton();
        Botao.setTitle(">", for: .normal); //Titulo do botao
        Botao.layer.cornerRadius = 20; //Borda redondinha
        Botao.backgroundColor = .black; //Cor do botao
        Botao.isOpaque = true; //Opacidade
        Botao.frame = CGRect(x: 40, y: 410, width: 300, height: 50); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox), for: .touchUpInside); //Evento do botao
        
        
        //COLOCANDO OS ITENS NA VIEW
        view.addSubview(label);
        view.addSubview(Botao);
        self.view = view;
    }
}
//----------------------------------------------------------------
//Iniciando as views

let rootViewController = PrincipalViewController()
let navigationController = UINavigationController(rootViewController: rootViewController)
PlaygroundPage.current.liveView = navigationController
