package kotlinx.coroutines.internal;

import a0.d;

/* JADX INFO: compiled from: Symbol.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Symbol {
    public final String symbol;

    public Symbol(String str) {
        this.symbol = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('<');
        return d.d(sb2, this.symbol, '>');
    }
}
