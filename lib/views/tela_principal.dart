import '../widgets/noticias.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    String usuario = ModalRoute.of(context)!.settings.arguments == null ? "sem login":ModalRoute.of(context)!.settings.arguments as String;
    usuario = usuario.substring(0,1) == '@' ? usuario:'@'+usuario;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Image.asset('lib/imagens/logoapp_q.png',), 
        automaticallyImplyLeading: false,
        flexibleSpace: Container(),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Feed', arguments: usuario);
              },
              child: const Text('Feed', style: TextStyle(
                color: Colors.white, 
                decoration: TextDecoration.underline,
                ),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Lista', arguments: usuario);
              },
              child: const Text('Lista', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Bancas', arguments: usuario);
              },
              child: const Text('Bancas', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Sobre', arguments: usuario);
              },

              child: const Text('Sobre', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.blue)
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 229, 232, 235)),
              ),
              onPressed: (){}, 
              child: Text(usuario, style: const TextStyle(color: Colors.blue),),
            ),

          ],
        ),
      ),
     

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              WidgetNoticias(
                "lib/imagens/logo_legisweb.png",
                "@legisweb",
                "05/04/2022",
                "Receita Federal prorroga o prazo da declaração do imposto de renda",
                "A Receita Federal publicou no Diário Oficial da União desta terça-feira, 5 de abril, a Instrução Normativa nº 2.077, que prorroga para 31 de maio de 2022 o prazo de entrega da Declaração de IRPF.\n\nO imposto a pagar apurado também teve seu vencimento adiado para o final do mês de maio, mas as restituições seguirão o cronograma anterior, sem alteração",
              ),
              WidgetNoticias(
                "lib/imagens/logo_sigaofisco.png",
                "@sigafisco",
                "25/04/2022",
                "Resolução prorroga para 31 de maio adesão ao Relp",
                "Resolução CGSN 168/2022 prorroga para 31 de maio de 2022 o prazo de adesão ao Relp. A medida já tinha sido anunciada dia 20 de abril pelo Comitê Gestor do Simples Nacional.\n\nO Relp permite o parcelamento com reduções nos valores de juros e multas para os débitos apurados no Simples Nacional ou no Simei de períodos de apuração (PA) até 02/2022.",              
              ),
              WidgetNoticias(
                "lib/imagens/logo_diaadia.png",
                "@diaadiatributario",
                "11/04/2022",
                "Juíza permite que empresa retire ISS, PIS e Cofins da base de cálculo de ISS",
                "Com base na decisão do Supremo Tribunal Federal que estabeleceu que o ICMS deve ser excluído da base de cálculo do PIS/Cofins, a 12ª Vara de Fazenda Pública do Rio de Janeiro concedeu liminar para autorizar a American Bureau of Shipping a retirar os valores de ISS, PIS e Cofins da base de cálculo do seu ISS.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_guiatributario.png",
                "@guiatributario",
                "18/04/2022",
                "TIPI/2022 – Decreto Consolida Tabela com Reduções de Alíquotas",
                "Por meio do Decreto 11.047/2022 foi alterada a Tabela do IPI, com vigência a partir de 01.05.2022.\n\nA nova tabela já contempla as reduções das alíquotas do IPI, previstas no Decreto 10.979/2022.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_contadorescnt.png",
                "@legisweb",
                "05/04/2022",
                "Receita Federal prorroga o prazo da declaração do imposto de renda",
                "A Receita Federal publicou no Diário Oficial da União desta terça-feira, 5 de abril, a Instrução Normativa nº 2.077, que prorroga para 31 de maio de 2022 o prazo de entrega da Declaração de IRPF.\n\nO imposto a pagar apurado também teve seu vencimento adiado para o final do mês de maio, mas as restituições seguirão o cronograma anterior, sem alteração",              
              ),
              WidgetNoticias(
                "lib/imagens/logo_jota.png",
                "@jota",
                "26/04/2022",
                "Decisão no STF gera corrida por exclusão da Selic do PIS/Cofins",
                "A decisão do Supremo Tribunal Federal (STF) que afastou a cobrança do IRPJ e da CSLL sobre valores referentes à taxa Selic em razão de repetição de indébito tributário, isto é, da devolução de um valor pago indevidamente pelo contribuinte, levou a uma corrida de contribuintes ao Judiciário para defender a não incidência do PIS e da Cofins sobre essas verbas.\n\nO principal argumento dos advogados é que os valores recebidos a título de Selic não representam receita nova para as empresas e, portanto, não podem compor a base de cálculo do PIS e da Cofins.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_easyway.png",
                "@ewb",
                "26/04/2022",
                "Transmissão da ecd 2022 poderá gerar alerta",
                "A maior novidade para essa entrega está na publicação da Nota Técnica ECD nº 001, que dispõe sobre nova regra de transmissão da obrigatoriedade relativa à aptidão do profissional contábil conforme registros do Conselho Federal de Contabilidade – CFC.\n\nA NT ECD nº 001 enfatiza que, de acordo com a legislação em vigor, somente contadores e técnicos em contabilidade com registro em um Conselho Regional de Contabilidade – CRC podem exercer a profissão contábil e a partir disso, faz um alerta: “ECD transmitidas a partir de 2022 poderão receber um aviso na transmissão identificando profissionais contábeis assinantes da escrituração que constam como ‘inaptos’ segundo os registros do CFC”.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_contadorescnt.png",
                "@contadorescnt",
                "26/04/2022",
                "Governo adia envio dos dados de órgãos públicos para o eSocial",
                "O governo federal adiou as datas de envio de informações de órgãos públicos, bem como das organizações internacionais, para o eSocial.\n\nO grupo gestor do eSocial atendeu pedido de representantes de estados e municípios que ainda não estão preparados para os compromissos do sistema de escrituração digital",
              ),
              WidgetNoticias(
                "lib/imagens/logo_fazendasp.png",
                "@fazendasp",
                "26/04/2022",
                "Em terceiro repasse de ICMS de abril, Sefaz-SP transfere R\$ 1,5 bilhão aos municípios",
                "A Secretaria da Fazenda e Planejamento do Estado de São Paulo (Sefaz-SP) transfere, nesta terça-feira (26), R\$ 1,53 bilhão aos caixas dos 645 municípios paulistas. O depósito é referente ao montante de ICMS arrecadado de 18 a 22 de abril. \n\nOs valores correspondem a 25% da arrecadação do imposto, que são distribuídos às administrações municipais com base na aplicação do Índice de Participação dos Municípios (IPM) definido para cada cidade.",
              ),
              WidgetNoticias(
                "lib/imagens/contabeis.png",
                "@contabeis",
                "20/04/2022",
                "Banco Central: servidores suspendem greve até início de maio e aguardam proposta do governo",
                "A greve dos servidores do Banco Central (BC) foi suspensa até o início de maio. A decisão da categoria foi anunciada em assembleia realizada nesta terça-feira (19). Apesar da pausa, os funcionários do BC dizem que darão continuidade a paralisações parciais diárias e à operação-padrão iniciada em 17 de março.\n\nOs servidores do BC deram como prazo até 2 de maio para que o governo apresente uma proposta de aumento salarial melhor do que os 5% oferecidos para todos os servidores federais. ",
              ),
            ],

            ),
          ),

      ),


    );
  }
}