public class Q_ClassDemo implements System.Queueable{
    public static void execute(QueueableContext qc){
        Account acc = new Account(Name='Queueable Apex account');
        insert acc;
    }
}