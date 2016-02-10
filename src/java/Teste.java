
import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA;
import com.allgreensolutions.sistema.model.Item;
import java.util.Random;


public class Teste {

    public static void main(String[] args) {
        for (int i = 0; i < 100; i++) {
            ItemDAO dao = new ItemDAOJPA();
            Item item = new Item();
            item.setNome("Item Teste " + String.valueOf(i));
            item.setEstoqueMinimo(new Random().nextInt(100));
            item.setFornecedor("Fornecedor Teste " + String.valueOf(i));
            
            dao.save(item);
            System.out.println(i);
        }
    }
}
