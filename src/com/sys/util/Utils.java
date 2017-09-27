package com.sys.util;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.mysql.jdbc.Util;
import com.sys.model.AvgScore;
import com.sys.model.Player;
import com.sys.model.PlayerAb;


public class Utils {
	public static Map<String, String> getPlayerByName(String name){
		Document doc=Utils.getDocByName(name);
		Map<String,String> map =new HashMap<String, String>();
		if(doc!=null){
			   map.put("name",doc.getElementById("table730top").getElementsByTag("strong").get(0).text()); 
			   Element div1 = doc.getElementById("table730middle");
			   Elements a= div1.getElementsByTag("td");
			   String html=div1.getElementsByTag("img").get(0).toString();
			   Pattern p = Pattern.compile("<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>");
			       Matcher m = p.matcher(html);
			       while(m.find()){
			           map.put("imgUrl", m.group(1));
			           
			       }
			   map.put("date", a.get(2).text());
			   map.put("height", a.get(10).text());
			   map.put("weight", a.get(12).text());
			   map.put("playTime", a.get(16).text() );
			   Element div2 = doc.getElementById("S_Cont_01");
			   Elements b =div2.getElementsByTag("td");
			   map.put("rebs", b.get(27).text());
			   map.put("asts", b.get(28).text());
			   map.put("spg",b.get(29).text());    //����
			   map.put("bpg", b.get(30).text());   //��ñ
			   map.put("tos", b.get(31).text());   //ʧ��
			   map.put("pts", b.get(33).text());   //�÷�
			   return map;
			  
			  
		}
		else return null;
	}
	
	private static Document getDocByName(String name){
	Document doc=null;
	try {
	   
		String  url="http://nba.sports.sina.com.cn/star/"+name+".shtml";
		doc = Jsoup.connect(url).get();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}//��ȡҳ������
	if(doc!=null) 
		return doc;	
	else          
		return null;	
	}
	public static double getAtt(double a){
		if( a<=10) return  a*6;
		else if(10<a &&a<20) return a*4;
		else  return a*3;
		
	}
	public static double getDeffen(double a,double b,double c){
		return (a*6+b*30+c*30)/3;
	}
	public static double getZuzhi(double a,double b){
		return a/b*25;
	}
public static void main(String[] args) {
	System.out.println(Utils.getZuzhi(10,3));
}
	
}
