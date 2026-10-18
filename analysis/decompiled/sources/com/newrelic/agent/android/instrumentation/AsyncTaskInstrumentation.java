package com.newrelic.agent.android.instrumentation;

import a0.b;
import android.annotation.TargetApi;
import android.os.AsyncTask;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.tracing.TracingInactiveException;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AsyncTaskInstrumentation {
    private static final AgentLog log = AgentLogManager.getAgentLog();

    /* JADX WARN: Multi-variable type inference failed */
    @ReplaceCallSite
    @TargetApi(14)
    public static final <Params, Progress, Result> AsyncTask execute(AsyncTask<Params, Progress, Result> asyncTask, Params... paramsArr) {
        try {
            ((TraceFieldInterface) asyncTask)._nr_setTrace(TraceMachine.getCurrentTrace());
        } catch (TracingInactiveException | NoSuchFieldError unused) {
        } catch (ClassCastException e10) {
            ExceptionHelper.recordSupportabilityMetric(e10, "TraceFieldInterface");
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Not a TraceFieldInterface: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
        }
        return asyncTask.execute(paramsArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ReplaceCallSite
    @TargetApi(11)
    public static final <Params, Progress, Result> AsyncTask executeOnExecutor(AsyncTask<Params, Progress, Result> asyncTask, Executor executor, Params... paramsArr) {
        try {
            ((TraceFieldInterface) asyncTask)._nr_setTrace(TraceMachine.getCurrentTrace());
        } catch (TracingInactiveException | NoSuchFieldError unused) {
        } catch (ClassCastException e10) {
            ExceptionHelper.recordSupportabilityMetric(e10, "TraceFieldInterface");
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Not a TraceFieldInterface: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
        }
        return asyncTask.executeOnExecutor(executor, paramsArr);
    }
}
