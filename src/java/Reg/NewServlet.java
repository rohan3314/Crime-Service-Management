
import java.util.Scanner;

/**
 *
 * @author adewijanugraha
 */
public class NewServlet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner masuk = new Scanner(System.in);
        Scanner masukInt = new Scanner(System.in);

//        String[][] dataLatih = {
//            {"2.95", "6.63", "gray", "passed"},
//            {"2.53", "7.79", "gray", "passed"},
//            {"3.57", "5.65", "Dark gray", "passed"},
//            {"3.57", "5.45", "gray", "passed"},
//            {"3.16", "4.46", "gray", "Not passed"},
//            {"2.58", "6.22", "Dark gray", "Not passed"},
//            {"2.16", "3.52", "Dark gray", "Not passed"}
//        };
                
//        String[][] dataLatih = {
//            {"cerah", "panas", "tinggi", "stabil", "tidak"},
//            {"cerah", "panas", "tinggi", "labil", "tidak"},
//            {"mendung", "panas", "tinggi", "stabil", "ya"},
//            {"hujan", "sedang", "tinggi", "stabil", "ya"},
//            {"hujan", "dingin", "normal", "stabil", "ya"},
//            {"hujan", "dingin", "normal", "labil", "tidak"},
//            {"mendung", "dingin", "normal", "labil", "ya"},
//            {"cerah", "dingin", "tinggi", "stabil", "tidak"},
//            {"cerah", "dingin", "normal", "stabil", "ya"},
//            {"hujan", "sedang", "normal", "stabil", "ya"},
//            {"cerah", "sedang", "normal", "labil", "ya"},
//            {"mendung", "sedang", "tinggi", "labil", "ya"},
//            {"mendung", "panas", "normal", "stabil", "ya"},
//            {"hujan", "sedang", "tinggi", "labil", "tidak"}
//        };

        
        //data latih
        String[][] dataLatih = {
            {"9", "kayu bakar", "ubin", "3", "sedang"},
            {"10", "gas LPG", "ubin", "2", "sedang"},
            {"15", "gas LPG", "plester", "2", "sedang"},
            {"30", "gas LPG", "ubin", "4", "kaya"},
            {"16", "kompor listrik", "ubin", "3", "kaya"},
            {"25", "gas LPG", "ubin", "5", "kaya"},
            {"9", "gas LPG", "plester", "0,5", "miskin"},
            {"8", "kayu bakar", "tanah", "1", "miskin"},
            {"10", "kayu bakar", "tanah", "2", "miskin"},
            {"14", "gas LPG", "tanah", "1", "miskin"}
        };

        System.out.println("-------------------- Naive Bayes --------------------");
        
        //input kondisi
        System.out.print("Jumlah Kondisi : ");
        int jmlKondisi = masukInt.nextInt();
        String[] kondisi = new String[jmlKondisi];
        for (int i = 0; i < kondisi.length; i++) {
            System.out.print("Masukkan Kondisi " + (i + 1) + " : ");
            kondisi[i] = masuk.nextLine();
        }
        
        //input kemungkinan
        System.out.print("\nJumlah Kemungkinan : ");
        int jmlKemungkinan = masukInt.nextInt();
        String[] kemungkinan = new String[jmlKemungkinan];
        for (int i = 0; i < kemungkinan.length; i++) {
            System.out.print("Masukkan Kemungkinan " + (i + 1) + " : ");
            kemungkinan[i] = masuk.nextLine();
        }

        System.out.println("\n-------------------- Perhitungan --------------------");
        
        //inisialisasi
        int a, cek = 0, count = 0, jumlah = 0;
        double total = 0, rataRata = 0, totalKuadrat = 0, varian = 0, probabilitas = 0;
        double nilaiFix[] = new double[jmlKemungkinan];
        double[] nilaiKondisi = new double[jmlKondisi];
        double[] temp = new double[dataLatih.length];
        for (int i = 0; i < nilaiFix.length; i++) {
            nilaiFix[i] = 1;
        }
        
        //cek setiap kemungkinan
        while (cek <= jmlKemungkinan - 1) {
            System.out.println("\n#Kemungkinan " + kemungkinan[cek] + "\nSearching : ");
            //Searching
            for (int j = 0; j < dataLatih.length; j++) {
                if (kemungkinan[cek].equalsIgnoreCase(dataLatih[j][(dataLatih[0].length - 1)])) {
                    for (int k = 0; k < kondisi.length; k++) {
                        if (kondisi[k].equalsIgnoreCase(dataLatih[j][k])) {
                            nilaiKondisi[k]++;
                            System.out.println("Nilai kondisi " + kondisi[k] + " : " + nilaiKondisi[k]);
                        } else {
                            System.out.println("Tidak ditemukan");
                        }
                    }
                    count++;
                }
            }
            
            System.out.println("\nNilai Sebelum : ");
            for (int i = 0; i < nilaiKondisi.length; i++) {
                System.out.println("Kondisi " + i + " : " + nilaiKondisi[i]);
            }
            
            //Cek Probabilitas
            for (int i = 0; i < nilaiKondisi.length; i++) {
                if (nilaiKondisi[i] == 0) {
                    try {
                        System.out.println("\nKondisi " + kondisi[i]);
                        double kondisiDicari = Double.parseDouble(kondisi[i]);
                        for (int j = 0; j < dataLatih.length; j++) {
                            temp[j] = Double.parseDouble(dataLatih[j][i]);
                        }

                        for (int j = 0; j < dataLatih.length; j++) {
                            if (kemungkinan[cek].equalsIgnoreCase(dataLatih[j][(dataLatih[0].length) - 1])) {
                                total += temp[j];
                                totalKuadrat += temp[j] * temp[j];
                                jumlah++;
                            }
                        }

                        rataRata = total / jumlah;
                        varian = ((jumlah * totalKuadrat) - (total * total)) / (jumlah * (jumlah - 1));
                        probabilitas = (1 / (Math.sqrt(2 * Math.PI * varian))) * Math.pow(Math.E, -(Math.pow((kondisiDicari - rataRata), 2)) / (2 * varian));
                        nilaiKondisi[i] = probabilitas;
                        nilaiFix[cek] *= nilaiKondisi[i];

                        System.out.println("Count : " + count);
                        System.out.println("Total : " + total);
                        System.out.println("Jumlah : " + jumlah);
                        System.out.println("Nilai Rata2 " + rataRata);
                        System.out.println("Nilai Varian " + varian);
                        System.out.println("Nilai Probabilitas " + probabilitas);

//                        Reset jumlah
                        jumlah = 0;
                        total = 0;
                        totalKuadrat = 0;
                    } catch (NumberFormatException e) {
//                        System.out.println("Gabisa Diparsing");
                        nilaiFix[cek] *= nilaiKondisi[i];
                        continue;
                    } catch (NullPointerException b) {
//                        System.out.println("null");
                        continue;
                    }

                } else {
                    nilaiFix[cek] *= (double) nilaiKondisi[i] / count;
                }
            }
            System.out.println("\nNilai Sesudah");
            for (int i = 0; i < nilaiKondisi.length; i++) {
                System.out.println("Kondisi " + kondisi[i] + " : " + nilaiKondisi[i]);
            }

            nilaiFix[cek] *= (double) count / dataLatih.length;
            System.out.println("Nilai fix Peluang " + kemungkinan[cek] + " : " + nilaiFix[cek]);

//            Reset variable
            count = 0;
            for (int i = 0; i < nilaiKondisi.length; i++) {
                nilaiKondisi[i] = 0;
            }
            cek++;
        }

        System.out.println("");
        for (int i = 0; i < nilaiFix.length; i++) {
            System.out.println("Nilai Kemungkinan " + kemungkinan[i] + " : " + nilaiFix[i]);
        }

        double swap = 0;
        String swaps = null;
        for (int i = 0; i < jmlKemungkinan - 1; i++) {
            for (int j = 0; j < jmlKemungkinan - i - 1; j++) {
                if (nilaiFix[j] > nilaiFix[j + 1]) {
                    //Sorting Nilai
                    swap = nilaiFix[j];
                    nilaiFix[j] = nilaiFix[j + 1];
                    nilaiFix[j + 1] = swap;
                    //Sorting Kemungkinan
                    swaps = kemungkinan[j];
                    kemungkinan[j] = kemungkinan[j + 1];
                    kemungkinan[j + 1] = swaps;
                }
            }
        }
        System.out.println("\nDari kondisi yang sudah diinputkan, kemungkinan yang terjadi adalah " + kemungkinan[jmlKemungkinan - 1]);
    }
}