
import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA;
import com.allgreensolutions.sistema.model.Item;
import com.allgreensolutions.sistema.util.Conexao;
import com.allgreensolutions.sistema.util.HibernateUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSourceFactory;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;

public class Teste {

    public static void main(String[] args) throws NamingException, Exception {
//        Session sessao = HibernateUtil.openSession();
//        sessao.getTransaction().begin();
//        sessao.createQuery("DELETE FROM Item i WHERE i.codigo=1");
//        sessao.getTransaction().commit();
//        sessao.close();

//        URL url;
//        String line;
//        try {
//            url = new URL("https://www.random.org/strings/?num=10&len=10&loweralpha=on&unique=on&format=html&rnd=new");
//            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
//            BufferedReader in = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
//
//            while ((line = in.readLine()) != null) {
//                System.out.println(line);
//            }
//        } catch (MalformedURLException ex) {
//            Logger.getLogger(Teste.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (IOException ex) {
//            Logger.getLogger(Teste.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        for (int i = 0; i < 100; i++) {
//            ItemDAO dao = new ItemDAOJPA();
//            Item item = new Item();
//            item.setNome("Item Teste " + String.valueOf(i));
//            item.setEstoqueMinimo(new Random().nextInt(100));
//            item.setFornecedor("Fornecedor Teste " + String.valueOf(i));
//
//            dao.save(item);
//            System.out.println(i);
//        }
        System.exit(1);
    }
}
