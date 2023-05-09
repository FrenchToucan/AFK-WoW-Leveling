import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class TrainerBattleBot extends JFrame {
    private JList<String> fileList;
    private JButton startButton, pauseButton, stopButton;
    private ArrayList<File> scriptFiles;
    private Process scriptProcess;
    private final String AUTOHOTKEY_PATH = "C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey.exe";
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private Timer countdownTimer;

    public TrainerBattleBot() {
        // set up the main frame
        setTitle("Trainer Battle Bot");
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
        File scriptFolder = new File("./Trainer Battles");
        addFilesToScriptList(scriptFolder);
        String[] fileListData = new String[scriptFiles.size()];
        for (int i = 0; i < scriptFiles.size(); i++) {
            fileListData[i] = scriptFiles.get(i).getAbsolutePath().replace(scriptFolder.getAbsolutePath() + File.separator, "");
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

        // create the countdown timer
        countdownTimer = new Timer();
        Date resetTime = getResetTime();
        countdownTimer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                Date now = new Date();
                if (now.after(resetTime)) {
                    stopScript();
                    JOptionPane.showMessageDialog(null, "Realm reset!");
                    countdownTimer.cancel();
                    countdownTimer.purge();
                } else {
                    long diff = resetTime.getTime() - now.getTime();
                    long seconds = diff / 1000 % 60;
                    long minutes                = diff / (60 * 1000) % 60;
                    long hours = diff / (60 * 60 * 1000) % 24;
                    String timeLeft = String.format("%02d:%02d:%02d", hours, minutes, seconds);
                    setTitle("Trainer Battle Bot - " + timeLeft + " until realm reset");
                }
            }
        }, 0, 1000);
    
        // schedule stopping the script at 11AM Eastern
        Timer stopScriptTimer = new Timer();
        stopScriptTimer.schedule(new TimerTask() {
            @Override
            public void run() {
                stopScript();
                JOptionPane.showMessageDialog(null, "Script stopped due to realm reset.");
                System.exit(0);
            }
        }, getStopTime());
    
        setVisible(true);
    }
    
    private void addFilesToScriptList(File folder) {
        File[] files = folder.listFiles();
        for (File file : files) {
            if (file.isDirectory()) {
                addFilesToScriptList(file);
            } else if (file.getName().endsWith(".ahk")) {
                scriptFiles.add(file);
            }
        }
    }
    
    private void startScript() {
        if (fileList.getSelectedIndex() == -1) {
            JOptionPane.showMessageDialog(null, "Please select a script to run.");
            return;
        }
        File scriptFile = scriptFiles.get(fileList.getSelectedIndex());
        try {
            scriptProcess = new ProcessBuilder(AUTOHOTKEY_PATH, scriptFile.getAbsolutePath()).start();
            setTitle("Trainer Battle Bot - Running " + scriptFile.getName());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    private void pauseScript() {
        if (scriptProcess == null) {
            return;
        }
        scriptProcess.destroy();
        setTitle("Trainer Battle Bot - Paused");
    }
    
    private void stopScript() {
        if (scriptProcess == null) {
            return;
        }
        scriptProcess.destroy();
        scriptProcess = null;
        setTitle("Trainer Battle Bot");
    }
    
    private Date getResetTime() {
        LocalDateTime now = LocalDateTime.now(ZoneId.of("America/New_York"));
        LocalDateTime resetTime = now.withHour(8).withMinute(0).withSecond(0);
        if (now.compareTo(resetTime) >= 0) {
            resetTime = resetTime.plusDays(1);
        }
        return Date.from(resetTime.atZone(ZoneId.of("America/New_York")).toInstant());
    }
    
    private Date getStopTime() {
        LocalDateTime now = LocalDateTime.now(ZoneId.of("America/New_York"));
        LocalDateTime stopTime = now.withHour(11).withMinute(0).withSecond(0);
        if (now.compareTo(stopTime) >= 0) {
            stopTime = stopTime.plusDays(1);
        }
        return Date.from(stopTime.atZone(ZoneId.of("America/New_York")).toInstant());
    }
    
    public static void main(String[] args) {
        new TrainerBattleBot();
    }
}
    