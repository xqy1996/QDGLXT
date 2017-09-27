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
     * 折线图
     * @param title        标题
     * @param datas        数据
     * @param type        第一场，第二场..
     * @param danwei    数量单位
     * @param font        字体
     */
    public static void createPort(String title,Map<String,Map<String,Double>> datas,String type,String danwei,Font font){
          try {
                //种类数据集
                DefaultCategoryDataset ds = new DefaultCategoryDataset();
                //获取迭代器：
                   Set<Entry<String, Map<String, Double>>> set1 =  datas.entrySet();    //总数据
                   Iterator iterator1=(Iterator) set1.iterator();                        //第一次迭代
                   Iterator iterator2=null;                                                
                   HashMap<String, Double> map =  null;
                   Set<Entry<String,Double>> set2=null;
                   Entry entry1=null;
                   Entry entry2=null;
                   int index=1;
                   while(iterator1.hasNext()){//4种分类
                       entry1=(Entry) iterator1.next();                    //遍历分类   
                       map=(HashMap<String, Double>) entry1.getValue();//得到每次分类的详细信息
                       System.err.println(map.size());
                       set2=map.entrySet();                               //获取键值对集合
                       iterator2=set2.iterator();                        //再次迭代遍历
                       while (iterator2.hasNext()) {//4-4
                         
                           entry2= (Entry) iterator2.next();
                           ds.setValue(Double.parseDouble(entry2.getValue().toString()),//每次统计数量
                                          entry2.getKey().toString(),                         //名称
                                          entry1.getKey().toString());                        //分类
                           System.out.println("当前：--- "+entry2.getKey().toString()+"--"
                                                      +entry2.getValue().toString()+"--"
                                                      +entry1.getKey().toString());
                       }
                       System.out.println("--------------------------");
                   }               
                //创建折线图,折线图分水平显示和垂直显示两种
               JFreeChart chart = ChartFactory.createLineChart(title, type, danwei, ds,//2D折线图
                                                              PlotOrientation.VERTICAL, 
                                                         true, true, true);
                //设置整个图片的标题字体
                chart.getTitle().setFont(font);
     
                //设置提示条字体
                font = new Font("黑体", Font.BOLD, 15);
                chart.getLegend().setItemFont(font);
     
                //得到绘图区
                CategoryPlot plot = (CategoryPlot) chart.getPlot();
                //得到绘图区的域轴(横轴),设置标签的字体
                plot.getDomainAxis().setLabelFont(font);
     
                //设置横轴标签项字体
                plot.getDomainAxis().setTickLabelFont(font);
     
                //设置范围轴(纵轴)字体
                font = new Font("黑体", Font.BOLD, 18);
                plot.getRangeAxis().setLabelFont(font);
                //存储成图片
     
                //设置chart的背景图片
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
      
        //设置第一场的比赛信息
        
         map1.put("甲队", (double) 81);
         map1.put("乙队", (double) 102);
   
         
        //设置第二场的比赛信息
         map2.put("甲队", (double) 90);
         map2.put("乙队", (double) 68);

         
        //设置第三场的比赛信息
         map3.put("甲队", (double) 78);
         map3.put("乙队", (double) 102);
   
 
        //设置第四场的比赛信息
         map4.put("甲队", (double) 100);
         map4.put("乙队", (double) 110);
         
         //填入数据
         datas.put("第一场", map1);
         datas.put("第二场", map2);
         datas.put("第三场", map3);
         datas.put("第四场", map4);

        Font font = new Font("黑体", Font.BOLD, 20);
        Test.createPort("球队历史战绩对比图",datas,"","得分",font);
    }
}