import numpy as np
import backpropagation as bp
import hammingDistance as hammingDis
from flask import Flask, render_template, request
from flask_mysqldb import MySQL
from textwrap import wrap
import fusi_code as fc
import joblib
#cekkk
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'promaydo.net'
app.config['MYSQL_USER'] = 'promaydo_ardy'
app.config['MYSQL_PASSWORD'] = 'polinema@123'
app.config['MYSQL_DB'] = 'promaydo_ardy'

mysql = MySQL(app)

normalizer_data = iteration = hidden_layer = learning_rate = 0
weight_hidden = 0
weight_output = 0
bias_hidden = 0
bias_output = 0
is_trained = False
jenis_sayap = jumlah_sayap =  jenis_mesin = jumlah_mesin  = badan_pesawat = bentuk_ekor = persenjataan = warna = ''
NN = bp.Neural_Network(1, int(hidden_layer), 2, float(learning_rate))
# XOR gerbang logika
def XOR(x, y):
    if x != y:
        return '1'
    else:
        return '0'

# ciri difusikan menjadi 1 binary
def fusi_informasi(x):
    global information_fusion
    for i in range(len(x) - 1):
        temp = []
        for j in range(len(x[0])):
            if i == 0:
                temp += XOR(x[i][j], x[i + 1][j])
            else:
                temp += XOR(information_fusion[0][j], x[i + 1][j])
        information_fusion = ''.join(temp).split()
    return information_fusion

# untuk membuka page lain
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/instructions')
def tutorial():
    return render_template('instruction.html')

@app.route('/dataset')
def dataset_aircraft():
    cur_dataset = mysql.connection.cursor()
    cur_dataset.execute("SELECT a.id, b.features, d.features, f.features, g.features,  i.features, j.features, m.features, n.features, a.jenis_pesawat, a.nama_pesawat FROM dataset a INNER JOIN jenis_sayap b ON a.jenis_sayap = b.id"
                        
                        " INNER JOIN jumlah_sayap d ON a.jumlah_sayap = d.id "
                        " INNER JOIN jenis_mesin f ON a.jenis_mesin = f.id "
                        " INNER JOIN jumlah_mesin g ON a.jumlah_mesin = g.id "
                        " INNER JOIN badan_pesawat i ON a.badan_pesawat = i.id "
                        " INNER JOIN bentuk_ekor j ON a.jenis_ekor = j.id "
                        " INNER JOIN persenjataan m ON a.persenjataan = m.id "
                        " INNER JOIN warna_pesawat n ON a.warna = n.id "
                        " ORDER BY a.id ASC")
    get_all_dataset = cur_dataset.fetchall()
    cur_dataset.close()
    return render_template('dataset.html', get_all_dataset=get_all_dataset)

@app.route('/identification')
def identifikasi():
    global jenis_sayap, jumlah_sayap, badan_pesawat,jenis_mesin, jumlah_mesin, bentuk_ekor, persenjataan, warna
    cur1 = mysql.connection.cursor()
    cur1.execute("SELECT * FROM jenis_sayap")
    jenis_sayap = cur1.fetchall()
    cur1.close()
    cur2 = mysql.connection.cursor()
    cur2.execute("SELECT * FROM jumlah_sayap")
    jumlah_sayap = cur2.fetchall()
    cur2.close()
    cur3 = mysql.connection.cursor()
    cur3.execute("SELECT * FROM badan_pesawat")
    badan_pesawat = cur3.fetchall()
    cur3.close()
    cur4 = mysql.connection.cursor()
    cur4.execute("SELECT * FROM jenis_mesin")
    jenis_mesin = cur4.fetchall()
    cur4.close()
    cur5 = mysql.connection.cursor()
    cur5.execute("SELECT * FROM jumlah_mesin")
    jumlah_mesin = cur5.fetchall()
    cur5.close()
    cur6 = mysql.connection.cursor()
    cur6.execute("SELECT * FROM bentuk_ekor")
    bentuk_ekor = cur6.fetchall()
    cur6.close()
    cur7 = mysql.connection.cursor()
    cur7.execute("SELECT * FROM persenjataan")
    persenjataan = cur7.fetchall()
    cur7.close()
    cur7 = mysql.connection.cursor()
    cur7.execute("SELECT * FROM warna_pesawat")
    warna = cur7.fetchall()
    cur7.close()
    return render_template('identification.html', jenis_sayap=jenis_sayap, jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat, jenis_mesin=jenis_mesin, jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)

@app.route('/pelatihan')
def training_data():
    return render_template('pelatihan.html')

@app.route('/training_data', methods=['GET', 'POST'])
def train_data():
    global hidden_layer, learning_rate, NN, weight_hidden, weight_output, bias_hidden, bias_output, is_trained
    if request.method == 'POST':
        data = []
        setup_form_error = False
        hidden_layer = request.form['neuronHiddenLayer']
        learning_rate = request.form['learningRate']
        iteration = request.form['iteration']
        if hidden_layer == '' or learning_rate == '' or iteration == '':
            setup_form_error = True
            return render_template('pelatihan.html', setup_form_error=setup_form_error, show_dialog=True, jenis_sayap=jenis_sayap, jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat,jenis_mesin=jenis_mesin, jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)
        cur14 = mysql.connection.cursor()
        cur14.execute("SELECT * FROM separate_fusi_dataset")
        for i in cur14:
            classes = list(str(i[1]))
            classes.insert(1, ',')
            classes = ''.join(classes)
            wings = list(str(fc.convert_decimal(fc.add_dot_separator(i[2]))))
            wings.insert(17, ',')
            wings = ''.join(wings)
            engine = list(str(fc.convert_decimal(fc.add_dot_separator(i[3]))))
            engine.insert(17, ',')
            engine = ''.join(engine)
            fuselage = list(str(fc.convert_decimal(fc.add_dot_separator(i[4]))))
            fuselage.insert(17, ',')
            fuselage = ''.join(fuselage)
            tail = list(str(fc.convert_decimal(fc.add_dot_separator(i[5]))))
            tail.insert(17, ',')
            tail = ''.join(tail)
            additional = str(fc.convert_decimal(fc.add_dot_separator(i[6])))
            new_value = classes + wings + engine + fuselage + tail + additional
            
            data.append(new_value)
        cur14.close()
        NN = bp.Neural_Network(5, int(hidden_layer), 4, float(learning_rate))
        NN.train_data(data, int(iteration))
        # is_trained = True
        accuracy_train = round(NN.accu_train, 2)
        loss_train = NN.final_loss
        if weight_hidden != '' and accuracy_train > 94:
            weight_hidden = NN.weight_hidden
            weight_output = NN.weight_output
            bias_hidden = NN.bias_hidden
            bias_output = NN.bias_output
        else:
            weight_hidden = NN.weight_hidden
            weight_output = NN.weight_output
            bias_hidden = NN.bias_hidden
            bias_output = NN.bias_output

        return render_template('pelatihan.html', setup_form_error=setup_form_error, show_dialog=True, accuracy_train=accuracy_train, loss_train=loss_train, jenis_sayap=jenis_sayap, jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat,jenis_mesin=jenis_mesin, jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)
    

# mengambil data dari form input dan menggabungkan menjadi 1 list dan data input difusikan
@app.route('/getting_value', methods=['GET', 'POST'])
def get_val():
    if request.method == 'POST':
        nearest_predict = ''
        new_transform_data = []
        test_data = []
        arrays = []
        wings = []
        engine = []
        fuselage = []
        tail = []
        additional = []
        Form_error = False
        jenis_sayap_data = request.form['jenissayap_data']
        jumlah_sayap_data = request.form['jumlahsayap_data']
        badan_pesawat_data = request.form['badanpesawat_data']
        jenis_mesin_data = request.form['jenismesin_data']
        jumlah_mesin_data = request.form['jumlahmesin_data']
        jenis_ekor_data = request.form['jenisekor_data']
        persenjataan_data = request.form['persenjataan_data']
        warna_pesawat_data = request.form['warnapesawat_data']
        
        if jenis_sayap_data == '' or jumlah_sayap_data == '' or badan_pesawat_data == '' or jenis_mesin_data == '' or jumlah_mesin_data == ''  or jenis_ekor_data == '' or persenjataan_data == '' or warna_pesawat_data== '' :
            Form_error = True
            return render_template('identification.html', show_result=True,Form_error=Form_error, jenis_sayap=jenis_sayap,jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat,jenis_mesin=jenis_mesin,jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)
        # if is_trained == False:
        #     error_train = True
        #     return render_template('identification.html', error_train=error_train, jenis_sayap=jenis_sayap,jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat,jenis_mesin=jenis_mesin,jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)
        wings.extend([jenis_sayap_data, jumlah_sayap_data])
        fuselage.extend([badan_pesawat_data])
        engine.extend([jenis_mesin_data, jumlah_mesin_data])
        tail.extend([jenis_ekor_data])
        additional.extend([persenjataan_data, warna_pesawat_data])
        
        arrays.extend([fc.convert_decimal(fc.add_dot_separator(fusi_informasi(wings)[0])),fc.convert_decimal(fc.add_dot_separator(fusi_informasi(engine)[0])), fc.convert_decimal(fc.add_dot_separator(fuselage[0])),fc.convert_decimal(fc.add_dot_separator(tail[0])), fc.convert_decimal(fc.add_dot_separator(fusi_informasi(additional)[0]))])
        data_predict = np.asfarray(arrays)
        load_weight = joblib.load("weight_param.pkl")
        print(load_weight)
        predict = NN.predict(data_predict, load_weight[0], load_weight[1], load_weight[2], load_weight[3])

        # predict = NN.predict(data_predict, weight_hidden, weight_output, bias_hidden, bias_output)
        print(predict)
        predict_index = np.argmax(predict)
        print (np.argmax(predict), np.argmin(predict))
        accuracy_index = predict[predict_index]
        accuracy_predict = (accuracy_index[0] * 100)
        accuracy = round(accuracy_predict, 2)
        label = [['Pesawat Militer'],['Pesawat Sipil'],['Helikopter Militer'],['Helikopter Sipil']]
        
        index_label = label[predict_index]
        cur15 = mysql.connection.cursor()
        cur15.execute("SELECT * FROM separate_fusi_dataset WHERE class = %s", (str(predict_index)))
        for i in cur15:
            new_transform_data.append([i[2] + i[3] + i[4] + i[5] + i[6]])
        cur15.close()
        test_data.append(fusi_informasi(wings)[0] + fusi_informasi(engine)[0] + fuselage[0] + tail[0] + fusi_informasi(additional)[0])
        get_nearest_data = hammingDis.get_min_hd(test_data, new_transform_data)
        new_nearest_data = wrap(get_nearest_data, 16)
        print(new_nearest_data)
        cur16 = mysql.connection.cursor()
        cur16.execute(
            "SELECT * FROM separate_fusi_dataset WHERE class = %s AND wings_features LIKE %s AND engine_features LIKE %s AND fuselage_features LIKE %s AND tail_features LIKE %s AND add_features LIKE %s",
            (predict_index, fusi_informasi(wings)[0], fusi_informasi(engine)[0], fuselage[0], tail[0], fusi_informasi(additional)[0]))
        get_predict = cur16.fetchall()
        cur16.close()
        if not get_predict:
            cur17 = mysql.connection.cursor()
            cur17.execute(
                "SELECT * FROM separate_fusi_dataset WHERE class = %s AND wings_features LIKE %s AND engine_features LIKE %s AND fuselage_features LIKE %s AND tail_features LIKE %s AND add_features LIKE %s",
                (predict_index, new_nearest_data[0], new_nearest_data[1], new_nearest_data[2], new_nearest_data[3], new_nearest_data[4]))
            nearest_predict = cur17.fetchall()
            
        print(index_label)

        

        return render_template('identification.html', nearest_predict=nearest_predict, data=accuracy, index_label=index_label, show_result=True, Form_error=Form_error, get_predict=get_predict ,jenis_sayap=jenis_sayap, jumlah_sayap=jumlah_sayap, badan_pesawat=badan_pesawat,jenis_mesin=jenis_mesin, jumlah_mesin=jumlah_mesin, bentuk_ekor=bentuk_ekor, persenjataan=persenjataan, warna=warna)
