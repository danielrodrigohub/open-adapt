package okhttp3;

import de.g;
import p4.h;

/* JADX INFO: compiled from: WebSocketListener.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i10, String str) {
        h.j(webSocket, "webSocket");
        h.j(str, "reason");
    }

    public void onClosing(WebSocket webSocket, int i10, String str) {
        h.j(webSocket, "webSocket");
        h.j(str, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        h.j(webSocket, "webSocket");
        h.j(th, "t");
    }

    public void onMessage(WebSocket webSocket, g gVar) {
        h.j(webSocket, "webSocket");
        h.j(gVar, "bytes");
    }

    public void onMessage(WebSocket webSocket, String str) {
        h.j(webSocket, "webSocket");
        h.j(str, "text");
    }

    public void onOpen(WebSocket webSocket, Response response) {
        h.j(webSocket, "webSocket");
        h.j(response, "response");
    }
}
