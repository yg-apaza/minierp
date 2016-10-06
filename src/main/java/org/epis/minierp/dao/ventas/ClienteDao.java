package org.epis.minierp.dao.ventas;

import java.util.ArrayList;
import org.epis.minierp.model.Cliente;
import org.epis.minierp.util.DbMoreUtil;

public class ClienteDao {

    public ClienteDao() {
    }
    public boolean crearCliente(Cliente cli){
        String sentence = "insert into en_p1m_cliente "
                + "(CliCod, CliNom, CliApePat, CliApeMat, CLiSex, CliDir, "
                + "CliTelFij, CliTelCel, CliEmail, EstCivCod, EstRegCod) "
                + "values "
                + "('"+cli.getCliCod()+"', '"
                + cli.getCliNom()+"', '"
                + cli.getCliApePat()+"', '"
                + cli.getCliApeMat()+"', '"
                + cli.getCliSex()+"', '"
                + cli.getCliDir()+"', '"
                + cli.getCliTelFij()+"', '"
                + cli.getCliTelCel()+"', '"
                + cli.getCliEmail()+"', '"
                + cli.getEstCivCod()+"', '"
                + cli.getEstRegCod()+"');";
        return DbMoreUtil.executeUpdate(sentence);
    }
    
    public Cliente getCliente(String CliCod){
        String sentence = "select * from en_p1m_cliente where "
                + "CliCod = '"+CliCod+"';";
        ArrayList<Object[]> cliquery = DbMoreUtil.executeQuery(sentence, 11);
        if(cliquery == null || cliquery.isEmpty()){
            return null;
        }
        Cliente cli = new Cliente();
        cli.setCliCod((String)cliquery.get(0)[0]);
        cli.setCliNom((String)cliquery.get(0)[1]);
        cli.setCliApePat((String)cliquery.get(0)[2]);
        cli.setCliApeMat((String)cliquery.get(0)[3]);
        cli.setCliSex(cliquery.get(0)[4].toString().charAt(0));
        cli.setCliDir((String)cliquery.get(0)[5]);
        cli.setCliTelFij((String)cliquery.get(0)[6]);
        cli.setCliTelCel((String)cliquery.get(0)[7]);
        cli.setCliEmail((String)cliquery.get(0)[8]);
        cli.setEstCivCod((Integer.parseInt(cliquery.get(0)[9].toString())));
        cli.setEstRegCod(cliquery.get(0)[10].toString().charAt(0));
        return cli;
    }
    
}
