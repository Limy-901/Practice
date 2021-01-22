import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import java.net.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

class ChatGUIClient extends JFrame {
	Container cp;
	JPanel pNorth, pSouth;
	JTextArea ta;
	JScrollPane sp;
	JLabel laId;
    JTextField tfId, tf;
	JButton bInOut, bClear;	
	ImageIcon ii;

	void init(){
		setUI();
	}
	void setUI(){
		setLayout(new BorderLayout());
		cp = getContentPane();
        
		ChatHandler h = new ChatHandler(this);

        pNorth = new JPanel();
		laId = new JLabel("  Chat ID  ");
		tfId = new JTextField(22);
		tfId.addActionListener(h);
		bInOut = new JButton("입장");
		bInOut.addActionListener(h);
        pNorth.add(laId, BorderLayout.WEST);
        pNorth.add(tfId, BorderLayout.CENTER);
		pNorth.add(bInOut, BorderLayout.EAST);
		cp.add(pNorth, BorderLayout.NORTH);

        ta = new JTextArea();
		ta.setEditable(false);
		ta.setBackground(Color.LIGHT_GRAY);
		sp = new JScrollPane(ta);
		cp.add(sp, BorderLayout.CENTER);

        pSouth = new JPanel();
        tf = new JTextField(26);
		tf.addActionListener(h);
		tf.setEditable(false);
		bClear = new JButton(" 지우기");
		bClear.addActionListener(h);
		pSouth.add(tf, BorderLayout.CENTER);
		pSouth.add(bClear, BorderLayout.EAST);
		cp.add(pSouth, BorderLayout.SOUTH);

        createImageIcon();
		always();
	}
	void always(){
		setTitle("Chat GUI Client Ver 1.0");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		setSize(400, 400);
		setLocation(500, 100);
		setVisible(true);
	}
	void createImageIcon(){
		try{
			BufferedImage bi = ImageIO.read(new File("imgs/p_play.png"));
			ii = new ImageIcon(bi);
		}catch(IOException ie){
		}
	}
	public static void main(String[] args) {
		ChatGUIClient client = new ChatGUIClient();
		client.init();
	}
}

class ChatHandler implements ActionListener  
{
	ChatGUIClient c;
	ChatHandler(ChatGUIClient c){
		this.c = c;
	}
	public void actionPerformed(ActionEvent e){
		Object obj = e.getSource();
		if(obj == c.tfId){
			String chatId = c.tfId.getText();
			if(chatId != null) chatId = chatId.trim();
			if(chatId.length() == 0){
				JOptionPane.showMessageDialog(
				c, "채팅 아이디를 입력해주세요", "알림", 
					JOptionPane.INFORMATION_MESSAGE, c.ii);
				c.tfId.setText("");
			}else{
				if(c.tfId.isEditable()){ //입장(서버연결) 
					c.bInOut.setLabel("퇴장");
					c.tfId.setEditable(false);
					c.tf.setEditable(true);
					c.tf.requestFocus();
				}
			}
		}else if(obj == c.bInOut){
			String chatId = c.tfId.getText();
			if(chatId != null) chatId = chatId.trim();
			if(chatId.length() == 0){
				JOptionPane.showMessageDialog(
				c, "채팅 아이디를 입력해주세요", "알림", 
					JOptionPane.INFORMATION_MESSAGE, c.ii);
				c.tfId.setText("");
				c.tfId.requestFocus();
			}else{
				if(c.tfId.isEditable()){ //입장(서버연결) 
					c.bInOut.setLabel("퇴장");
					c.tfId.setEditable(false);
					c.tf.setEditable(true);
					c.tf.requestFocus();
				}else{
					c.bInOut.setLabel("입장");
					c.tfId.setEditable(true);
					c.tf.setEditable(false);
					c.tfId.setText("");
					c.tf.setText("");
					c.tfId.requestFocus();
				}
			}
		}else if(obj == c.tf){
			String msg = c.tf.getText();
            c.ta.append(msg + "\n");
			c.tf.setText("");
		}else{ 
			c.ta.setText("");
			c.tf.requestFocus();
		}
	}
}
