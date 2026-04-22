package org.example.linguaggi;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Parser;
import org.antlr.v4.runtime.tree.ParseTree;

public class Main {
    public static void main(String[] args) {
        String input = "(10+(2*-3))";
        //to stream of characters
        CharStream cs = CharStreams.fromString(input);

        CalculatorLexer lexer = new CalculatorLexer(cs);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        CalculatorParser parser = new CalculatorParser(tokens);
        ParseTree tree = parser.exp();

        EvalVisitor visitor=new EvalVisitor();
        Integer result = visitor.visit(tree);
    }
}
