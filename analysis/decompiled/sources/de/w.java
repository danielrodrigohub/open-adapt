package de;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class w {
    public static final e a(h0 h0Var) {
        p4.h.j(h0Var, "<this>");
        return new c0(h0Var);
    }

    public static final f b(j0 j0Var) {
        p4.h.j(j0Var, "<this>");
        return new d0(j0Var);
    }

    public static final boolean c(AssertionError assertionError) {
        Logger logger = x.f6278a;
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? yd.s.i0(message, "getsockname failed") : false;
    }

    public static final h0 d(File file, boolean z10) throws FileNotFoundException {
        Logger logger = x.f6278a;
        return new z(new FileOutputStream(file, z10), new k0());
    }

    public static final h0 e(Socket socket) throws IOException {
        Logger logger = x.f6278a;
        p4.h.j(socket, "<this>");
        i0 i0Var = new i0(socket);
        OutputStream outputStream = socket.getOutputStream();
        p4.h.i(outputStream, "getOutputStream()");
        return i0Var.sink(new z(outputStream, i0Var));
    }

    public static final j0 f(InputStream inputStream) {
        Logger logger = x.f6278a;
        p4.h.j(inputStream, "<this>");
        return new s(inputStream, new k0());
    }

    public static final j0 g(Socket socket) throws IOException {
        Logger logger = x.f6278a;
        p4.h.j(socket, "<this>");
        i0 i0Var = new i0(socket);
        InputStream inputStream = socket.getInputStream();
        p4.h.i(inputStream, "getInputStream()");
        return i0Var.source(new s(inputStream, i0Var));
    }
}
