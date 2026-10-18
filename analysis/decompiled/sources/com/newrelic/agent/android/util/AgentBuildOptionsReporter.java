package com.newrelic.agent.android.util;

import a0.b;
import com.newrelic.agent.android.Agent;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes.dex */
public class AgentBuildOptionsReporter {
    public static void main(String[] strArr) {
        PrintStream printStream = System.out;
        StringBuilder sbC = b.c("Agent version: ");
        sbC.append(Agent.getVersion());
        printStream.println(sbC.toString());
        PrintStream printStream2 = System.out;
        StringBuilder sbC2 = b.c("Unity instrumentation: ");
        sbC2.append(Agent.getUnityInstrumentationFlag());
        printStream2.println(sbC2.toString());
        PrintStream printStream3 = System.out;
        StringBuilder sbC3 = b.c("Build ID: ");
        sbC3.append(Agent.getBuildId());
        printStream3.println(sbC3.toString());
    }
}
