# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'dialog.ui',
# licensing of 'dialog.ui' applies.
#
# Created: Fri Nov  8 14:05:17 2019
#      by: pyside2-uic  running on PySide2 5.13.2
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(400, 300)
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
        self.X1.setObjectName("X1")
        self.X2 = QtWidgets.QDoubleSpinBox(Dialog)
        self.X2.setGeometry(QtCore.QRect(150, 140, 121, 26))
        self.X2.setObjectName("X2")
        self.T = QtWidgets.QDoubleSpinBox(Dialog)
        self.T.setGeometry(QtCore.QRect(280, 140, 69, 26))
        self.T.setObjectName("T")
        self.Tip = QtWidgets.QLabel(Dialog)
        self.Tip.setGeometry(QtCore.QRect(30, 20, 331, 51))
        self.Tip.setObjectName("Tip")
        self.Submit = QtWidgets.QPushButton(Dialog)
        self.Submit.setGeometry(QtCore.QRect(140, 260, 89, 25))
        self.Submit.setObjectName("Submit")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QtWidgets.QApplication.translate("Dialog", "Dialog", None, -1))
        self.Y_func_label.setText(QtWidgets.QApplication.translate("Dialog", "Y function", None, -1))
        self.X1_label.setText(QtWidgets.QApplication.translate("Dialog", "X1 absolute limit", None, -1))
        self.X2_label.setText(QtWidgets.QApplication.translate("Dialog", "X2 absolute limit", None, -1))
        self.T_label.setText(QtWidgets.QApplication.translate("Dialog", "T", None, -1))
        self.Tip.setText(QtWidgets.QApplication.translate("Dialog", "Enter the calculation info for the discrete system", None, -1))
        self.Submit.setText(QtWidgets.QApplication.translate("Dialog", "Submit", None, -1))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())

