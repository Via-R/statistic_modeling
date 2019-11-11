from sympy.parsing.sympy_parser import parse_expr, standard_transformations as st, implicit_multiplication_application as ima
if __name__ == "__main__":
    with open("y_final.log", "r") as f:
        y_raw = f.read()
        start_from = y_raw.index("->") + 3
        y_raw = y_raw[start_from:]

        #t = 

        #parse_expr(y_raw, transformations=(st+ (ima, )))