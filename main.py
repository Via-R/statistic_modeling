import sys, GUI, cexprtk

def on_submit():
    y_func = UI.Y_func.text()
    try:
        cexprtk.check_expression(y_func)
    except:
        print("Expression is invalid")
    else:
        with open("y.txt", "w+") as f:
            f.write(y_func)
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

