
Partial Class index
    Inherits System.Web.UI.Page
    Function calculateNet() As Decimal
        'specify constant tax rate
        Const taxRate As Decimal = 0.18

        'create variables to hold values of user input
        Dim wage As Decimal = Val(wageTextBox.Text)
        Dim hours As Decimal = Val(hoursTextBox.Text)
        Dim pre As Decimal = Val(preTextBox.Text)
        Dim after As Decimal = Val(afterTextBox.Text)
        Dim preResult As Decimal
        Dim gross As Decimal
        Dim netResult As Decimal
        Dim taxTotal As Decimal

        'calculate gross earnings per week
        gross = wage * hours

        'calculate gross after pre-tax deduction
        preResult = gross - pre

        'calculate tax due after pre-tax deductions
        taxTotal = preResult * taxRate

        'calculate net take home pay
        netResult = gross - pre - taxTotal - after

        Return netResult
    End Function

    Protected Sub calculateButton_Click(sender As Object, e As System.EventArgs) Handles calculateButton.Click
        

        'Display Net take home pay after taxes
        netLabel.Text = calculateNet()


    End Sub

    Protected Sub clearButton_Click(sender As Object, e As System.EventArgs) Handles clearButton.Click
        wageTextBox.Text = ""
        hoursTextBox.Text = ""
        preTextBox.Text = ""
        afterTextBox.Text = ""
        netLabel.Text = ""

    End Sub
End Class
