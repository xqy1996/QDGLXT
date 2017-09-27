package test;
import java.awt.Font;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;
import javax.imageio.ImageIO;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

public class Test {
    /**
     * ����ͼ
     * @param title        ����
     * @param datas        ����
     * @param type        ��һ�����ڶ���..
     * @param danwei    ������λ
     * @param font        ����
     */
    public static void createPort(String title,Map<String,Map<String,Double>> datas,String type,String danwei,Font font){
          try {
                //�������ݼ�
                DefaultCategoryDataset ds = new DefaultCategoryDataset();
                //��ȡ��������
                   Set<Entry<String, Map<String, Double>>> set1 =  datas.entrySet();    //������
                   Iterator iterator1=(Iterator) set1.iterator();                        //��һ�ε���
                   Iterator iterator2=null;                                                
                   HashMap<String, Double> map =  null;
                   Set<Entry<String,Double>> set2=null;
                   Entry entry1=null;
                   Entry entry2=null;
                   int index=1;
                   while(iterator1.hasNext()){//4�ַ���
                       entry1=(Entry) iterator1.next();                    //��������   
                       map=(HashMap<String, Double>) entry1.getValue();//�õ�ÿ�η������ϸ��Ϣ
                       System.err.println(map.size());
                       set2=map.entrySet();                               //��ȡ��ֵ�Լ���
                       iterator2=set2.iterator();                        //�ٴε�������
                       while (iterator2.hasNext()) {//4-4
                         
                           entry2= (Entry) iterator2.next();
                           ds.setValue(Double.parseDouble(entry2.getValue().toString()),//ÿ��ͳ������
                                          entry2.getKey().toString(),                         //����
                                          entry1.getKey().toString());                        //����
                           System.out.println("��ǰ��--- "+entry2.getKey().toString()+"--"
                                                      +entry2.getValue().toString()+"--"
                                                      +entry1.getKey().toString());
                       }
                       System.out.println("--------------------------");
                   }               
                //��������ͼ,����ͼ��ˮƽ��ʾ�ʹ�ֱ��ʾ����
               JFreeChart chart = ChartFactory.createLineChart(title, type, danwei, ds,//2D����ͼ
                                                              PlotOrientation.VERTICAL, 
                                                         true, true, true);
                //��������ͼƬ�ı�������
                chart.getTitle().setFont(font);
     
                //������ʾ������
                font = new Font("����", Font.BOLD, 15);
                chart.getLegend().setItemFont(font);
     
                //�õ���ͼ��
                CategoryPlot plot = (CategoryPlot) chart.getPlot();
                //�õ���ͼ��������(����),���ñ�ǩ������
                plot.getDomainAxis().setLabelFont(font);
     
                //���ú����ǩ������
                plot.getDomainAxis().setTickLabelFont(font);
     
                //���÷�Χ��(����)����
                font = new Font("����", Font.BOLD, 18);
                plot.getRangeAxis().setLabelFont(font);
                //�洢��ͼƬ
     
                //����chart�ı���ͼƬ
                chart.setBackgroundImage(ImageIO.read(new File("D:/1.jpg")));
                plot.setForegroundAlpha(1.0f);
     
                ChartUtilities.saveChartAsJPEG(new File("D:/1.png"), chart, 800, 500);
            } catch (Exception e) {
                e.printStackTrace();
            }
     }
    public static void main(String[] args) {
        Map<String, Map<String, Double>> datas =new HashMap<String, Map<String,Double>>();
        
        Map<String, Double> map1=new HashMap<String, Double>();
        Map<String, Double> map2=new HashMap<String, Double>();
        Map<String, Double> map3=new HashMap<String, Double>();
        Map<String, Double> map4=new HashMap<String, Double>();
      
        //���õ�һ���ı�����Ϣ
        
         map1.put("�׶�", (double) 81);
         map1.put("�Ҷ�", (double) 102);
   
         
        //���õڶ����ı�����Ϣ
         map2.put("�׶�", (double) 90);
         map2.put("�Ҷ�", (double) 68);

         
        //���õ������ı�����Ϣ
         map3.put("�׶�", (double) 78);
         map3.put("�Ҷ�", (double) 102);
   
 
        //���õ��ĳ��ı�����Ϣ
         map4.put("�׶�", (double) 100);
         map4.put("�Ҷ�", (double) 110);
         
         //��������
         datas.put("��һ��", map1);
         datas.put("�ڶ���", map2);
         datas.put("������", map3);
         datas.put("���ĳ�", map4);

        Font font = new Font("����", Font.BOLD, 20);
        Test.createPort("�����ʷս���Ա�ͼ",datas,"","�÷�",font);
    }
}