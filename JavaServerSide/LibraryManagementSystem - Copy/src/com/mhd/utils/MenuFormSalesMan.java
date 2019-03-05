package com.mhd.utils;

import com.mhd.views.DashBoard;
import com.mhd.views.Login;
import com.mhd.views.LoginMe;
import com.mhd.views.SalesReportView;
import com.mhd.views.SalesView;
import com.mhd.views.SalesViewForSalesMan;
import com.mhd.views.UserDashBoard;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;

public class MenuFormSalesMan {

    public static JMenuBar commonMenuForSalesMan(JFrame f) {
        JMenuBar menuBar = new JMenuBar();
        JMenu file = new JMenu("File");
        JMenuItem dashboard = new JMenuItem("Dashboard");
        dashboard.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                 f.setVisible(false);
                new UserDashBoard().setVisible(true);
            }
        });
        
        
        JMenuItem sales = new JMenuItem("Sales");
        sales.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                 f.setVisible(false);
                new SalesViewForSalesMan().setVisible(true);
            }
        });
        JMenuItem summary = new JMenuItem("Summary");
        summary.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                 f.setVisible(false);
                new SalesReportView().setVisible(true);
            }
        });
       
        JMenuItem signOut = new JMenuItem("Sign Out");
        signOut.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                f.setVisible(false);
                new LoginMe().setVisible(true);
            }
        });
        file.add(dashboard);
        file.addSeparator();      
        file.add(sales);
        file.addSeparator();
        file.add(summary);
        file.addSeparator();       
        file.add(signOut);

        JMenuItem help = new JMenuItem("Help");
        menuBar.add(file);
        menuBar.add(help);      
        f.setJMenuBar(menuBar);
        f.setExtendedState(JFrame.MAXIMIZED_BOTH);
        return menuBar;
    }
}
