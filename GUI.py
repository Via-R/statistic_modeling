# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'dialog.ui',
# licensing of 'dialog.ui' applies.
#
# Created: Mon Nov 11 18:42:11 2019
#      by: pyside2-uic  running on PySide2 5.13.2
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(400, 458)
        self.Y_func = QtWidgets.QLineEdit(Dialog)
        self.Y_func.setGeometry(QtCore.QRect(20, 210, 361, 25))
        self.Y_func.setObjectName("Y_func")
        self.Y_func_label = QtWidgets.QLabel(Dialog)
        self.Y_func_label.setGeometry(QtCore.QRect(20, 180, 111, 17))
        self.Y_func_label.setObjectName("Y_func_label")
        self.X1_label = QtWidgets.QLabel(Dialog)
        self.X1_label.setGeometry(QtCore.QRect(20, 110, 121, 17))
        self.X1_label.setObjectName("X1_label")
        self.X2_label = QtWidgets.QLabel(Dialog)
        self.X2_label.setGeometry(QtCore.QRect(150, 110, 121, 17))
        self.X2_label.setObjectName("X2_label")
        self.T_label = QtWidgets.QLabel(Dialog)
        self.T_label.setGeometry(QtCore.QRect(280, 110, 67, 17))
        self.T_label.setObjectName("T_label")
        self.X1 = QtWidgets.QDoubleSpinBox(Dialog)
        self.X1.setGeometry(QtCore.QRect(20, 140, 121, 26))
        self.X1.setProperty("value", 1.0)
        self.X1.setObjectName("X1")
        self.X2 = QtWidgets.QDoubleSpinBox(Dialog)
        self.X2.setGeometry(QtCore.QRect(150, 140, 121, 26))
        self.X2.setProperty("value", 1.0)
        self.X2.setObjectName("X2")
        self.T = QtWidgets.QDoubleSpinBox(Dialog)
        self.T.setGeometry(QtCore.QRect(280, 140, 69, 26))
        self.T.setProperty("value", 1.0)
        self.T.setObjectName("T")
        self.Tip = QtWidgets.QLabel(Dialog)
        self.Tip.setGeometry(QtCore.QRect(30, 20, 331, 51))
        self.Tip.setObjectName("Tip")
        self.Submit = QtWidgets.QPushButton(Dialog)
        self.Submit.setGeometry(QtCore.QRect(150, 420, 89, 25))
        self.Submit.setObjectName("Submit")
        self.Error = QtWidgets.QLabel(Dialog)
        self.Error.setGeometry(QtCore.QRect(20, 390, 361, 20))
        self.Error.setText("")
        self.Error.setObjectName("Error")
        self.L_eq = QtWidgets.QComboBox(Dialog)
        self.L_eq.setGeometry(QtCore.QRect(20, 280, 361, 25))
        self.L_eq.setObjectName("L_eq")
        self.L_eq.addItem("")
        self.L_eq_label = QtWidgets.QLabel(Dialog)
        self.L_eq_label.setGeometry(QtCore.QRect(20, 250, 181, 17))
        self.L_eq_label.setObjectName("L_eq_label")
        self.G_func = QtWidgets.QComboBox(Dialog)
        self.G_func.setGeometry(QtCore.QRect(20, 350, 361, 25))
        self.G_func.setObjectName("G_func")
        self.G_func.addItem("")
        self.G_func_label = QtWidgets.QLabel(Dialog)
        self.G_func_label.setGeometry(QtCore.QRect(20, 320, 81, 17))
        self.G_func_label.setObjectName("G_func_label")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QtWidgets.QApplication.translate("Dialog", "Input info for modeling calculations", None, -1))
        self.Y_func.setText(QtWidgets.QApplication.translate("Dialog", "cos(Pi*x1/2)*cos(Pi*x2/2)*t", None, -1))
        self.Y_func_label.setText(QtWidgets.QApplication.translate("Dialog", "Y function", None, -1))
        self.X1_label.setText(QtWidgets.QApplication.translate("Dialog", "X1 absolute limit", None, -1))
        self.X2_label.setText(QtWidgets.QApplication.translate("Dialog", "X2 absolute limit", None, -1))
        self.T_label.setText(QtWidgets.QApplication.translate("Dialog", "T", None, -1))
        self.Tip.setText(QtWidgets.QApplication.translate("Dialog", "Enter the calculation info for the discrete system", None, -1))
        self.Submit.setText(QtWidgets.QApplication.translate("Dialog", "Submit", None, -1))
        self.L_eq.setItemText(0, QtWidgets.QApplication.translate("Dialog", "diff(y(x1, x2, t), t, t) - c^2*(diff(y(x1, x2, t), x1, x1) + diff(y(x1, x2, t), x2, x2))", None, -1))
        self.L_eq_label.setText(QtWidgets.QApplication.translate("Dialog", "Main differential equation", None, -1))
        self.G_func.setItemText(0, QtWidgets.QApplication.translate("Dialog", "piecewise(0 < c*t - sqrt(x1^2 + x2^2), 1/(2*Pi*c*(c^2*t^2 + (-x1^2 - x2^2))), 0)", None, -1))
        self.G_func_label.setText(QtWidgets.QApplication.translate("Dialog", "G function", None, -1))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())

