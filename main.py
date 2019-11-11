import sys, GUI, cexprtk

def on_submit():
    y_func = UI.Y_func.text().replace(" ", "")
    s = map(lambda i: float(i.text().replace(",", ".")), [UI.X1, UI.X2, UI.T])
    G = str(UI.G_func.currentText()).replace(" ", "")
    L = str(UI.L_eq.currentText()).replace(" ", "")
    #float(UI.X1.text().replace(",", "."))
    s = "{} {} {}".format(*s)
    try:
        cexprtk.check_expression(y_func)
    except:
        UI.Error.setText("Expression is invalid")
    else:
        with open("y.txt", "w+") as f:
            f.write(y_func)
        with open("s.txt", "w+") as f:
            f.write(s)
        with open("G.txt", "w+") as f:
            f.write(G)
        with open("L_eq.txt", "w+") as f:
            f.write(L)
        Dialog.close()

def set_callbacks():
    UI.Submit.clicked.connect(on_submit)
    

if __name__ == "__main__":
    global Dialog, UI

    app = GUI.QtWidgets.QApplication(sys.argv)
    Dialog = GUI.QtWidgets.QDialog()
    UI = GUI.Ui_Dialog()
    UI.setupUi(Dialog)

    set_callbacks()

    Dialog.show()
    
    sys.exit(app.exec_())

