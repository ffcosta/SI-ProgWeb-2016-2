package aprovacao_ufg;

import java.beans.FeatureDescriptor;

public class AprovacaoModel {
	private static String aprovadoFreq;
	private static String aprovadoNota;
	
	 public static void verifacarFrequencia(float frequencia){
		 if(frequencia == -1){
			 aprovadoFreq = "empty";
		 }
		 else if(frequencia >= 0.75)
			 aprovadoFreq = "aprovado";
		 
		 else if(frequencia < 0.75 && frequencia != -1){
			 aprovadoFreq = "reprovado";
		 }
	 }
	 public static void verifacarNota(float nota){
		 if(nota == -1)
			 aprovadoNota = "empty";
		 else if(nota >= 6)
			 aprovadoNota = "aprovado";
		 else if(nota < 6 && nota != -1)
			 aprovadoNota = "reprovado";
	 }
	 
	 
		

		  public static String verficarAprovacao(String nome) {
		   
		    String result = "";
		    if(aprovadoFreq == "empty" && aprovadoNota == "empty")
		    	result = "";
		    if(aprovadoFreq == "aprovado" && aprovadoNota == "aprovado")
		    	result = "Aluno " + nome + " Aprovado";
		    else if(aprovadoFreq == "reprovado" && aprovadoNota == "aprovado")
		    	result = "Aluno " + nome +" Reprovado por frequência";
		    else if(aprovadoFreq == "reprovado" && aprovadoNota == "reprovado")
		    	result ="Aluno " + nome +" Reprovado por média e frequênica";
		    else if(aprovadoFreq == "aprovado" && aprovadoNota == "reprovado")
		    	result ="Aluno " + nome +" Reprovado por média";
		   
		   
		    return result;
		  }
}
