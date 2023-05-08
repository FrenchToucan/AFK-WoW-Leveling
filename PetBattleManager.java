import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.ArrayList;

public class PetBattleManager extends JFrame {
    private JList<String> fileList;
    private JButton startButton, pauseButton, stopButton;
    private ArrayList<File> scriptFiles;
    private Process scriptProcess;
    private final String AUTOHOTKEY_PATH = "C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey.exe";

    public PetBattleManager() {
        // set up the main frame
        setTitle("Pet Battle Manager");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 300);

        // set dark mode
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            e.printStackTrace();
        }

        // create the file list
        scriptFiles = new ArrayList<>();
        File scriptFolder = new File("./Pet_Battles");
        for (File file : scriptFolder.listFiles()) {
            if (file.isFile() && file.getName().endsWith(".ahk")) {
                scriptFiles.add(file);
            }
        }
        String[] fileListData = new String[scriptFiles.size()];
        for (int i = 0; i < scriptFiles.size(); i++) {
            fileListData[i] = scriptFiles.get(i).getName().replace(".ahk", "");
        }
        fileList = new JList<>(fileListData);
        fileList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        fileList.setBackground(Color.DARK_GRAY);
        fileList.setForeground(Color.WHITE);
        JScrollPane fileListScrollPane = new JScrollPane(fileList);

        // create the control buttons
        startButton = new JButton("Start");
        startButton.setBackground(Color.GREEN);
        startButton.setForeground(Color.WHITE);
        startButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                startScript();
            }
        });
        pauseButton = new JButton("Pause");
        pauseButton.setBackground(Color.YELLOW);
        pauseButton.setForeground(Color.BLACK);
        pauseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                pauseScript();
            }
        });
        stopButton = new JButton("Stop");
        stopButton.setBackground(Color.RED);
        stopButton.setForeground(Color.WHITE);
        stopButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                stopScript();
            }
        });

        // add components to the main frame
        Container contentPane = getContentPane();
        contentPane.setLayout(new BorderLayout());
        contentPane.setBackground(Color.DARK_GRAY);
        contentPane.add(fileListScrollPane, BorderLayout.CENTER);
        JPanel buttonPanel = new JPanel(new GridLayout(1, 3));
        buttonPanel.setBackground(Color.DARK_GRAY);
        buttonPanel.add(startButton);
        buttonPanel.add(pauseButton);
        buttonPanel.add(stopButton);
        contentPane.add(buttonPanel, BorderLayout.SOUTH);
    }

    private void startScript() {
        int selectedIndex = fileList.getSelectedIndex();
        if (selectedIndex >= 0) {
            File scriptFile = scriptFiles.get(selectedIndex);
            try {
                String[] command = new String[] {AUTOHOTKEY_PATH, scriptFile.getAbsolutePath()};
                scriptProcess = Runtime.getRuntime().exec(command);
            } catch (IOException e) {
                JOptionPane.showMessageDialog(this, "Error starting script: " + e.getMessage());
            }
        }
    }

    private void pauseScript() {
        if (scriptProcess != null) {
            scriptProcess.destroy();
        }
    }

    private void stopScript() {
        if (scriptProcess != null) {
            scriptProcess.destroy();
        }
    }

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        PetBattleManager petBattleManager = new PetBattleManager();
        petBattleManager.setVisible(true);
    }
}
