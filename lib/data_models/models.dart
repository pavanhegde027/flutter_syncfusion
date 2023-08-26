
//Data model for Bar Graph
class Investment {

  final String category;
  final num aggressiveFunds;
  final num largeFunds;
  final num arbitrage;
  final num midCap;
  final num marketFunds;
  final num contingency;
  final num flexi;
  final num liquid;
  final num preciousMetals;
  final num equity;
  final num smallFunds;
  final num digitalFunds;

  Investment( this.category, this.aggressiveFunds, this.arbitrage,  this.contingency, this.digitalFunds, this.equity, this.flexi,this.largeFunds, this.liquid,this.marketFunds, this.midCap,this.preciousMetals, this.smallFunds);
}

//Data model for Area graph
class Assets {

  final String category;
  final num loanPrincipal;
  final num assetClassBalance;

  Assets(this.category, this.loanPrincipal, this.assetClassBalance);

}

//Data model for the Line graph
class Repayments {

  final String category;
  final num loan;
  final num investment;

  Repayments(this.category, this.loan, this.investment);

}