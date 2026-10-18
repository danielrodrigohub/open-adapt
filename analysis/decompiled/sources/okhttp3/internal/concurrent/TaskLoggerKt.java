package okhttp3.internal.concurrent;

import a0.b;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.http2.Http2Connection;
import p4.h;
import qd.a;

/* JADX INFO: compiled from: TaskLogger.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskLoggerKt {
    public static final String formatDuration(long j10) {
        String str;
        if (j10 <= -999500000) {
            str = ((j10 - ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        } else if (j10 <= -999500) {
            str = ((j10 - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j10 <= 0) {
            str = ((j10 - ((long) HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR)) / ((long) 1000)) + " µs";
        } else if (j10 < 999500) {
            str = ((j10 + ((long) HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR)) / ((long) 1000)) + " µs";
        } else if (j10 < 999500000) {
            str = ((j10 + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j10 + ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        }
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        h.i(str2, "format(format, *args)");
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Logger logger, Task task, TaskQueue taskQueue, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(taskQueue.getName$okhttp());
        sb2.append(SafeJsonPrimitive.NULL_CHAR);
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        h.i(str2, "format(format, *args)");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(task.getName());
        logger.fine(sb2.toString());
    }

    public static final <T> T logElapsed(Logger logger, Task task, TaskQueue taskQueue, a<? extends T> aVar) {
        long jNanoTime;
        long jNanoTime2;
        StringBuilder sbC;
        h.j(logger, "<this>");
        h.j(task, "task");
        h.j(taskQueue, "queue");
        h.j(aVar, "block");
        boolean zIsLoggable = logger.isLoggable(Level.FINE);
        if (zIsLoggable) {
            jNanoTime = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(logger, task, taskQueue, "starting");
        } else {
            jNanoTime = -1;
        }
        try {
            T tInvoke = aVar.invoke();
            if (zIsLoggable) {
                jNanoTime2 = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                sbC = b.c("finished run in ");
            }
            return tInvoke;
        } finally {
            if (zIsLoggable) {
                jNanoTime2 = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                sbC = b.c("failed a run in ");
                sbC.append(formatDuration(jNanoTime2));
                log(logger, task, taskQueue, sbC.toString());
            }
        }
    }

    public static final void taskLog(Logger logger, Task task, TaskQueue taskQueue, a<String> aVar) {
        h.j(logger, "<this>");
        h.j(task, "task");
        h.j(taskQueue, "queue");
        h.j(aVar, "messageBlock");
        if (logger.isLoggable(Level.FINE)) {
            log(logger, task, taskQueue, aVar.invoke());
        }
    }
}
