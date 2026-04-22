package org.example.linguaggi;

import org.example.linguaggi.CalculatorParser.*;

public class EvalVisitor extends CalculatorBaseVisitor<Integer> {

    @Override
    public Integer visitNat(NatContext ctx) {
        return Integer.parseInt(ctx.NAT().getText());
    }
    @Override
    public Integer visitAdd(AddContext ctx) {
        Integer left = visit(ctx.exp(0));
        Integer right = visit(ctx.exp(1));
        return left + right;
    }

    @Override
    public Integer visitMul(MulContext ctx) {
        return visit(ctx.exp(0)) * visit(ctx.exp(1));
    }

    @Override
    public Integer visitDiv(DivContext ctx) {
        Integer denominator = visit(ctx.exp(1));
        if (denominator == 0) throw new ArithmeticException("Cannot divide by zero!");
        return visit(ctx.exp(0)) / denominator;
    }

    @Override
    public Integer visitMod(ModContext ctx) {
        return visit(ctx.exp(0)) % visit(ctx.exp(1));
    }

    @Override
    public Integer visitNeg(NegContext ctx) {
        return -visit(ctx.exp());
    }

}